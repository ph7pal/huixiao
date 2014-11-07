<?php

class ZhanhuiController extends T {

  /**
   * Displays a particular model.
   * @param integer $id the ID of the model to be displayed
   */
  public function actionView($id) {
    $info = $this->loadModel($id);
    if($info['status']!=Posts::STATUS_PASSED){
      if ($info['start_time'] < time()) {
        Zhanhui::model()->updateByPk($info['id'], array('status' => Posts::STATUS_DELED));
        $info['status']=  Posts::STATUS_DELED;
      }
    }
    Zhanhui::model()->updateCounters(array('hits' => 1), ':id=id', array(':id' => $info['id']));
    $sql="SELECT uid FROM {{zhanhui_relation}} WHERE logid={$id} ORDER BY cTime DESC";
    $uids=Yii::app()->db->createCommand($sql)->queryAll();
    foreach($uids as $key=>$uid){
      $_uname=Users::getUserInfo($uid,'truename');
      $uid['truename']=$_uname;
      $uids[$key]=$uid;
    }
    $this->render('view', array(
        'info' => $info,
        'users'=>$uids
    ));
  }

  /**
   * Lists all models.
   */
  public function actionIndex() {
    $type = zmf::filterInput($_GET['type'], 't', 1);
    if ($type == 'on' || !$type) {
      $status = Posts::STATUS_PASSED;
      $type = 'on';
    } else {
      $status = Posts::STATUS_DELED;
    }
    $_sql = "SELECT * FROM {{zhanhui}} WHERE status={$status}";
    Posts::getAll(array('sql' => $_sql), $pages, $lists);    
    foreach ($lists as $key => $list) {
      if ($list['start_time'] < time()) {
        Zhanhui::model()->updateByPk($list['id'], array('status' => Posts::STATUS_DELED));
        unset($lists[$key]);
      }
      $faceurl = zmf::noImg('url');
      if ($list['attachid'] > 0) {
        $attachinfo = Attachments::getOne($list['attachid']);
        if ($attachinfo) {
          $faceurl = zmf::uploadDirs(0, 'site', $attachinfo['classify'], '200') . $attachinfo['filePath'];
        }
      }
      $list['faceurl'] = $faceurl;
      $lists[$key] = $list;
    }
    $data['posts'] = $lists;
    $data['pages'] = $pages;
    $data['type'] = $type;
    $this->render('index', $data);
  }

  /**
   * Manages all models.
   */
  public function actionCanyu($id) {    
    if(Yii::app()->user->isGuest){
       $this->jsonOutPut(0, Yii::t('default', 'loginfirst'));
    }else{
      $uid=Yii::app()->user->id;
    }
    $userCredit = UserCredit::findOne($uid);
    if(!$userCredit){
      $this->jsonOutPut(0, '非常抱歉，您需要填写认证信息才可以报名哦');
    }elseif($userCredit['status']==Posts::STATUS_PASSED){
      $this->jsonOutPut(0, '非常抱歉，您的认证信息暂未通过审核');
    }
    $attr=array(
        'logid'=>$id,
        'uid'=>$uid,
    );
    $info=  ZhanhuiRelation::model()->findByAttributes($attr);
    if(!$info){
      $attr['cTime']=time();
      $attr['ip']=  ip2long(Yii::app()->request->userHostAddress);
      $model=new ZhanhuiRelation;
      $model->attributes=$attr;
      if($model->save()){
        $this->jsonOutPut(1, '恭喜您，报名成功');
      }else{
        $this->jsonOutPut(0, '非常抱歉，报名失败');
      }
    }else{
      $this->jsonOutPut(0, '您已报名，不能重复报名哦~');
    }
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer $id the ID of the model to be loaded
   * @return Zhanhui the loaded model
   * @throws CHttpException
   */
  public function loadModel($id) {
    $model = Zhanhui::model()->findByPk($id);
    if ($model === null)
      throw new CHttpException(404, 'The requested page does not exist.');
    return $model;
  }

  /**
   * Performs the AJAX validation.
   * @param Zhanhui $model the model to be validated
   */
  protected function performAjaxValidation($model) {
    if (isset($_POST['ajax']) && $_POST['ajax'] === 'zhanhui-form') {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }

}
