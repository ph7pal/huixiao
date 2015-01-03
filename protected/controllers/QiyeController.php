<?php

class QiyeController extends T {

  //public $layout = 'qiye';

  public function actionIndex() {
    $localarea=zmf::filterInput($_GET['localarea']);    
    $tagid=zmf::filterInput($_GET['tagid']);
    $medal=zmf::filterInput($_GET['medal'],'t',1);
    $_where='';
    if(is_numeric($localarea) && $localarea>0){
      $localids=  Area::getChildren($localarea);
      $localStr=join(',',$localids);
      $_where.=' AND localarea IN('.$localStr.')';
    }
    if($medal){
        $_where.=" AND medal='{$medal}'";
    }
    //根据主营产品获取企业
    if($tagid){
      $tagArr=  TagRelation::getTagsPosts($tagid);
      $tagArr=  array_filter($tagArr);
      if(!empty($tagArr)){
        $tagStr=join(',',$tagArr);
        if($tagStr!=''){
          $_where=" AND uid IN({$tagStr})";
        }
      }
    }    
    $_sql = "SELECT * FROM {{producer}} WHERE status=".Posts::STATUS_PASSED." {$_where}";
    Posts::getAll(array('sql' => $_sql), $pages, $lists);
    if (!empty($lists)) {
      foreach ($lists as $key => $list) {
        $faceurl = zmf::avatar($list['uid'], 'big');
        $areainfo = Area::getOne($list['localarea'], 'name');
        if ($areainfo) {
          $list['localname'] = $areainfo;
        } else {
          $list['localname'] = '';
        }
        $list['faceurl'] = $faceurl;
        $_goods = Goods::users($list['uid']);
        $list['goodsLists'] = $_goods;
        $lists[$key] = $list;
      }
    }
    $areas=Area::listArea();
    $medals=Medal::getAll('qiye');
    $tags=Tags::allTags();
    $data['posts'] = $lists;
    $data['pages'] = $pages;
    $data['areas'] = $areas;
    $data['localarea'] = $localarea;
    $data['medals'] = $medals;
    $data['medalid'] = $medal;
    $data['tags'] = $tags;
    $data['tagid'] = $tagid;
    $this->pageTitle =  '信用企业列表 - ' . zmf::config('sitename');
    $this->render('index', $data);
  }

  public function actionView() {
    $keyid = zmf::filterInput($_GET['id']);
    $colid = zmf::filterInput($_GET['colid']);
    $type = zmf::filterInput($_GET['type'], 't', 1);
    if (!$keyid) {
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $info = Producer::model()->findByPk($keyid);
    if (!$info) {
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $uid = $info['uid'];
    $userCredit = UserCredit::findOne($uid);
    if (!$userCredit || $userCredit['classify'] != 'producer') {
      //$this->message(0, '您要查看的页面不存在，请核实');
    }
    $columns = Columns::userColumns($uid);
    $selected = array();
    if (!empty($columns)) {
      if (!$colid && !$type) {
        $selected = $columns;
      } else {
        foreach ($columns as $col) {
          if ($col['id'] == $colid) {
            $selected[] = $col;
          }
        }
      }
      foreach ($columns as $key => $col) {
        $_colitems = Posts::allPosts(array('colid' => $col['id'], 'top' => 0, 'fields' => 'id,title,attachid,cTime', 'order' => 'hits'), 10, $uid);
        $col['posts'] = $_colitems;
        $columns[$key] = $col;
      }
    }
    $_sql = "SELECT * FROM {{goods}} WHERE status=" . Posts::STATUS_PASSED . " AND uid=" . $info['uid'] . " ORDER BY hits DESC LIMIT 30";
    $goods = Yii::app()->db->createCommand($_sql)->queryAll();
    if (!empty($goods)) {
      foreach ($goods as $key => $good) {
        $faceurl = zmf::noImg('url');
        if ($good['faceimg'] > 0) {
          $attachinfo = Attachments::getOne($good['faceimg']);
          if ($attachinfo) {
            $faceurl = zmf::uploadDirs(0, 'site', $attachinfo['classify'], '124') . $attachinfo['filePath'];
          }
        }
        $good['faceurl'] = $faceurl;
        $goods[$key] = $good;
      }
    }
    $_sql = "SELECT id,uid FROM {{lecturer}} WHERE status=" . Posts::STATUS_PASSED . " AND belongCompany='" . $info['id'] . "' ORDER BY hits DESC LIMIT 30";
    $lecturers = Yii::app()->db->createCommand($_sql)->queryAll();
    if (!empty($lecturers)) {
      foreach ($lecturers as $key => $lecturer) {
        $_truename = Users::getUserInfo($lecturer['uid'], 'truename');
        $lecturer['truename'] = $_truename;
        $lecturers[$key] = $lecturer;
      }
    }
    $_sql = "SELECT id,title FROM {{jobs}} WHERE uid={$uid} AND status=".Posts::STATUS_PASSED." ORDER BY cTime DESC LIMIT 10";
    $jobs = Yii::app()->db->createCommand($_sql)->queryAll();
    $data = array(
        'info' => $info,
        'goods' => $goods,
        'jobs' => $jobs,
        'lecturers' => $lecturers,
        'uid' => $uid,
        'type' => $type,
        'columns' => $columns,
        'selected' => $selected,
        'colid' => $colid
    );
    $this->pageTitle =  $info['companyname'].' - ' . zmf::config('sitename');
    $this->render('view', $data);
  }

  public function actionScore($id) {
    $classify = zmf::filterInput($_GET['type'], 't', 1);
    if (!$classify || !in_array($classify, array('qiye', 'team', 'lecturer'))) {
      throw new CHttpException(404, '不存在的分类');
    }
    if (Yii::app()->user->isGuest) {
        $this->message(0, '请先登录',Yii::app()->createUrl('site/login'));
    } else {
      $uid = Yii::app()->user->id;
    }
    $_addedType = UserCredit::findOne($uid);
    if ($_addedType && $_addedType['status']!=0) {
        $this->message(0, '您的认证信息尚未通过，暂不能参与评价');
    }elseif(!in_array($_addedType['classify'],array('agent','dealer'))){
        $this->message(0, '非常抱歉，您的认证类型尚不能参与评价');
    }else{
      $hasInfo=Score::model()->find('uid=:uid AND belongid=:beid AND classify=:class',array(':uid'=>$uid,':beid'=>$id,':class'=>$classify));
      if($hasInfo){
        $this->message(0, '您已评价过了哦~');
      }
    }
    if ($classify == 'qiye') {
      $info = Producer::model()->findByPk($id);
    }
    if (!$info) {
      throw new CHttpException(404, '您所访问的页面不存在');
    }
    $model = new Score;
    if (isset($_POST['Score'])) {
      if($_POST['Score']['score2']){
        $_POST['Score']['score2']=  strtotime($_POST['Score']['score2']);
      }
      $_POST['Score']['belongid'] = $id;
      $_POST['Score']['uid'] = $uid;
      $_POST['Score']['cTime'] = time();
      $_POST['Score']['ip'] = ip2long(Yii::app()->request->userHostAddress);
      $_POST['Score']['classify'] = $classify;
      $_POST['Score']['status'] = Posts::STATUS_STAYCHECK;
      $model->attributes = $_POST['Score'];
      if ($model->save()) {
        $this->message(1, '请作等待，我们将尽快审核您的评价',Yii::app()->createUrl('qiye/view',array('id'=>$id)));
      }
    }
    $model->classify = $classify;
    $title = $info['companyname'];
    $this->render('score', array('model' => $model, 'info' => $info, 'title' => $title));
  }

}
