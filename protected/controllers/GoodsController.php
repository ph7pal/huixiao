<?php

class GoodsController extends T {
  
  public $showMessage='';
  public $canMessage=false;
  public $isSelf=false;

  /**
   * Displays a particular model.
   * @param integer $id the ID of the model to be displayed
   */
  public function actionView($id) {
    $info = $this->loadModel($id);
    $faceurls = array();
    $faceimg = '';
    $sql = "SELECT * FROM {{attachments}} WHERE classify='goods' AND logid='{$id}' AND status=" . Posts::STATUS_PASSED . " ORDER BY cTime DESC";
    $attaches = Yii::app()->db->createCommand($sql)->queryAll();
    if (!empty($attaches)) {
      foreach ($attaches as $key => $attachinfo) {
        if ($key == 0) {
          $faceimg = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], '600') .'/'. $attachinfo['filePath'];
        }
        $faceurls[] = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], '600') .'/'. $attachinfo['filePath'];
      }
    }
    $tagids=$likes=array();
    $tagids[]=$info->colid;
    $tagids[]=$info->colid2;
    $tagids[]=$info->colid3;
    $tagids[]=$info->colid4;
    $tagids[]=$info->colid5;
    $tagids=  array_unique(array_filter($tagids));
    if(!empty($tagids)){
      foreach($tagids as $key=>$tagid){
        $_info=  Tags::getSimpleInfo($tagid);
        if($_info){
          $_items=Tags::getTagsGoods($tagid,4);
          $likes[$key]['taginfo']=$_info;
          $likes[$key]['items']=$_items;
        }
      }
    }
    //最新企业
    $newProducers = Producer::getNews();
    //留言初始化
    $model=new Message;
    $uid=Yii::app()->user->id;
    if(Yii::app()->user->isGuest){
      $this->showMessage=false;
    }elseif($uid!=$info['uid']) {      
      $userCredit = UserCredit::findOne($uid);
      $messinfo=false;
      if($userCredit){
        $messinfo=$model->find('uid=:uid AND belongid=:bid AND classify=:class',array(':uid'=>$uid,':bid'=>$id,':class'=>'goods'));
      }else{
        $this->showMessage=false;
      }      
      if($messinfo){
        $this->showMessage=true;
      }elseif($userCredit){
        $this->showMessage=false;
        $this->canMessage=true;
        $model->belongid=$id;
        $model->uid=Yii::app()->user->id;
        $model->classify='goods';
        $model->nickname='';
        $model->number='';
        $model->content='';
      }      
    }else{
      $this->showMessage=$this->canMessage=false;
      $this->isSelf=true;
    }
    $contact=array();
    if($this->showMessage){
      $sql = "SELECT contactname,contactmobile FROM {{producer}} WHERE uid={$info['uid']}";
      $contact=Yii::app()->db->createCommand($sql)->queryRow();
    }
    $this->pageTitle =  $info['title'].' - ' . zmf::config('sitename');
    $this->render('view', array(
        'info' => $info,
        'likes' => $likes,
        'faceimg' => $faceimg,
        'faceurls' => $faceurls,
        'model'=>$model,
        'contact'=>$contact,
        'newProducers'=>$newProducers,
    ));
  }

  /**
   * Lists all models.
   */
  public function actionIndex() {
    $uid = zmf::filterInput($_GET['uid']);
    $tagid = zmf::filterInput($_GET['tagid']);
    $localarea=zmf::filterInput($_GET['localarea']);
    $_where='';
    if(is_numeric($uid) && $uid>0){
      $_where.=' AND uid='.$uid;
    }
    if(is_numeric($localarea) && $localarea>0){
      $localids=  Area::getChildren($localarea);
      $localStr=join(',',$localids);
      if($localarea!=''){
        $_sql="SELECT uid FROM {{user_credit}} WHERE localarea IN($localarea) AND status=".Posts::STATUS_PASSED;
        $uids=Yii::app()->db->createCommand($_sql)->queryAll();
        if(!empty($uids)){
          $uidsStr=join(',',array_keys(CHtml::listData($uids,'uid','')));
          if($uidsStr!=''){
            $_where.=' AND uid IN('.$uidsStr.')';
          }
        }        
      }
    }
    $selectedTags='';
    if(is_numeric($tagid) && $tagid>0){
      $selectedTags=$tagid;
      $_where.=" AND (colid={$tagid} OR colid2={$tagid} OR colid3={$tagid} OR colid4={$tagid} OR colid5={$tagid})";
    }    
    $_sql = "SELECT * FROM {{goods}} WHERE status=".Posts::STATUS_PASSED.$_where." ORDER BY cTime DESC";
    Posts::getAll(array('sql' => $_sql), $pages, $lists);
    $_sql = "SELECT id,title,faceimg FROM {{goods}} WHERE status=".Posts::STATUS_PASSED." ORDER BY hits DESC LIMIT 10";
    $tops = Yii::app()->db->createCommand($_sql)->queryAll();
    $tags = Tags::allTags();
    if (!empty($lists)) {
      foreach ($lists as $key => $goods) {
        $faceurl = zmf::noImg('url');
        if ($goods['faceimg'] > 0) {
          $attachinfo = Attachments::getOne($goods['faceimg']);
          if ($attachinfo) {
            $faceurl = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], '200') .'/'. $attachinfo['filePath'];
          }
        }
        $goods['faceurl'] = $faceurl;
        $lists[$key] = $goods;
      }
    }
    if (!empty($tops)) {
      foreach ($tops as $key => $top) {
        $faceurl = zmf::noImg('url');
        if ($top['faceimg'] > 0) {
          $attachinfo = Attachments::getOne($top['faceimg']);
          if ($attachinfo) {
            $faceurl = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], '124') .'/'. $attachinfo['filePath'];
          }
        }
        $top['faceurl'] = $faceurl;
        $tops[$key] = $top;
      }
    }
    $areas=Area::listArea();
    $data['areas'] = $areas;
    $data['localarea'] = $localarea;
    $data['posts'] = $lists;
    $data['tops'] = $tops;
    $data['pages'] = $pages;
    $data['fieldsArr'] = $fieldsArr;
    $data['tags'] = $tags;
    $data['uid'] = $uid;
    $data['selectedTags'] = $selectedTags;
    $this->pageTitle =  '会销产品列表 - ' . zmf::config('sitename');
    $this->render('index', $data);
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer $id the ID of the model to be loaded
   * @return Goods the loaded model
   * @throws CHttpException
   */
  public function loadModel($id) {
    $model = Goods::model()->findByPk($id);
    if ($model === null)
      throw new CHttpException(404, 'The requested page does not exist.');
    return $model;
  }

  /**
   * Performs the AJAX validation.
   * @param Goods $model the model to be validated
   */
  protected function performAjaxValidation($model) {
    if (isset($_POST['ajax']) && $_POST['ajax'] === 'goods-form') {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }

}
