<?php

class AjaxController extends T {

  public function init() {
    parent::init();
    if (!Yii::app()->request->isAjaxRequest) {
      $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
    }
    if (Yii::app()->user->isGuest) {
      $this->jsonOutPut(0, Yii::t('default', 'loginfirst'));
    }
  }

  public function actionComment() {
    if (Yii::app()->user->isGuest) {
      $this->jsonOutPut(0, Yii::t('default', 'loginfirst'));
    }
    $uid = zmf::filterInput($_GET['uid']);
    if ($uid != Yii::app()->user->id) {
      $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
    }
    $status = T::checkYesOrNo(array('uid' => Yii::app()->user->id, 'type' => 'user_addcomments'));
    if (!$status) {
      $this->jsonOutPut(0, '非常抱歉，您暂不能参与评论。');
    }
    if (!Users::publishedNum('comments')) {
      T::message(0, '您本时段的评论次数已用完');
      exit();
    }
    $keyid = zmf::filterInput($_GET['id']);
    if (!isset($keyid) OR ! is_numeric($keyid)) {
      $this->jsonOutPut(0, Yii::t('default', 'pagenotexists'));
    }
    $type = zmf::filterInput($_GET['type'], 't', 1);
    if (!isset($type) OR ! in_array($type, array('posts', 'image'))) {
      $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
    }
    if ($type == 'posts') {
      $info = Posts::model()->findByPk($keyid);
    } else {
      $info = Attachments::model()->findByPk($keyid);
    }
    if (!$info) {
      $this->jsonOutPut(0, Yii::t('default', 'pagenotexists'));
    } elseif ($info['status'] != 1) {
      $this->jsonOutPut(0, Yii::t('default', 'contentnotexists'));
    } elseif ($type == 'posts') {
      if ($info['reply_allow'] != 1) {
        $this->jsonOutPut(0, '非常抱歉，该内容设置为不允许评论');
      }
    }
    $model = new Comments();
    if (isset($_POST['Comments'])) {
      Yii::app()->session['checkHasBadword'] = 'no';
      $_logid = zmf::filterInput($_POST['Comments']['logid']);
      if ($keyid != $_logid) {
        $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
      }
      $inputData = $_POST['Comments'];
      $inputData['logid'] = $keyid;
      $content = zmf::filterInput($_POST['Comments']['content'], 't', 1);
      if (empty($content)) {
        $this->jsonOutPut(0, '评论内容不能为空');
      } elseif (md5($content) == md5('请输入内容...')) {
        $this->jsonOutPut(0, '评论内容不能为空');
      }
      if (Yii::app()->session['checkHasBadword'] == 'yes') {
        $inputData['status'] = Posts::STATUS_STAYCHECK;
      } else {
        $inputData['status'] = Posts::STATUS_PASSED;
      }
      Yii::app()->session['checkHasBadword'] = 'no';
      $inputData['uid'] = Yii::app()->user->id;
      $inputData['cTime'] = time();
      $ip = Yii::app()->request->userHostAddress;
      $inputData['ip'] = ip2long($ip);
      if ($inputData['email'] != '') {
        $inputData['email'] = tools::jiaMi($inputData['email']);
      }
      $model->attributes = $inputData;
      if ($model->validate()) {
        $model->attributes = $inputData;
        if ($model->save()) {
          $this->jsonOutPut(1, '新增评论成功');
        } else {
          $this->jsonOutPut(0, '非常抱歉，新增评论失败');
        }
      } else {
        $this->jsonOutPut(0, '非常抱歉，提交内容未通过验证');
      }
    }
  }

  public function actionSetStatus() {
    $this->checkPower('setstatus');
    $keyid = zmf::filterInput($_POST['a']);
    $classify = zmf::filterInput($_POST['b'], 't', 1);
    $_status = zmf::filterInput($_POST['c'], 't', 1);
    if (!$keyid) {
      $this->jsonOutPut(0, '请选择对象');
    }
    if (!in_array($classify, array('posts', 'attachments', 'comments'))) {
      $this->jsonOutPut(0, '不允许的类型');
    }
    if (!in_array($_status, array('top', 'canceltop', 'del'))) {
      $this->jsonOutPut(0, '不允许的类型');
    }

    if ($_status == 'top') {
      $attr = array(
          'top' => 1,
          'cTime' => time()
      );
    } else if ($_status == 'canceltop') {
      $attr = array(
          'top' => 0,
      );
    } else if ($_status == 'del') {
      $status = Posts::STATUS_DELED;
      $attr = array(
          'status' => Posts::STATUS_DELED,
      );
    }
    $posts = new Posts();
    $attachments = new Attachments();
    $comments = new Comments();

    if ($$classify->updateByPk($keyid, $attr)) {
      $this->jsonOutPut(1, '操作成功');
    } else {
      $this->jsonOutPut(0, '操作失败');
    }
  }

  public function actionReport() {
    $this->checkPower('report');
    $data = array();
    $type = zmf::filterInput($_POST['t'], 't', 1);
    $url = zmf::filterInput($_POST['u'], 't', 1);
    $desc = zmf::filterInput($_POST['desc'], 't', 1);
    $sid = zmf::filterInput($_POST['k']);
    $allowType = array('posts', 'attachments', 'comments');
    if (!in_array($type, $allowType)) {
      //Forbidden::updateTimes();
      $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
    }
    if (!isset($sid) OR ! is_numeric($sid)) {
      $this->jsonOutPut(0, Yii::t('default', 'selectreporttarget'));
    }
    $data['uid'] = Yii::app()->user->id;
    $data['logid'] = $sid;
    $data['classify'] = $type;
    $data['url'] = $url;
    $data['desc'] = $desc;
    $data['ip'] = ip2long(Yii::app()->request->userHostAddress);
    $data['status'] = Posts::STATUS_STAYCHECK;
    $data['cTime'] = time();
    $fm = new Reports();
    $fm->attributes = $data;
    if ($fm->validate()) {
      if ($fm->save()) {
        $this->jsonOutPut(1, Yii::t('default', 'reportsuccess'));
      }
    } else {
      $this->jsonOutPut(0, Yii::t('default', 'unkownerror'));
    }
  }

  public function actionCity() {
    $idstr = $_POST['c'];
    $order = $_POST['e'];
    if (!$idstr) {
      $this->jsonOutPut(1, '请选择城市');
    }
    //$info=tools::city(array('idstr'=>$idstr));   
    $info = Area::listArea($idstr);
    $id = uniqid();
    if (!empty($info) && $info) {
      $longstr = '<select name="cityid[]" id="' . $id . '" onchange="ajaxCity(\'' . $id . '\',\'localarea\',\'more' . $id . '\',' . ($order + 1) . ')"><option value=0>--请选择--</option>';
      foreach ($info as $key => $val) {
        $longstr.='<option value="' . $key . '">' . $val . '</option>';
      }
      $longstr.='</select><span id="more' . $id . '"></span>';
      $this->jsonOutPut(1, $longstr);
    } else {
      $this->jsonOutPut(2, '暂无下级');
    }
  }

  public function actionChangeOrder() {
    $ids = $_POST['ids'];
    if ($ids == '') {
      $this->jsonOutPut(0, '操作对象不能为空');
    }
    $arr = array_filter(explode('#', $ids));
    if (empty($arr)) {
      $this->jsonOutPut(0, '操作对象不能为空');
    }
    //zmf::test($arr);
    $s = $e = 0;
    foreach ($arr as $k => $v) {
      $data = array(
          'order' => ($k + 1)
      );
      //zmf::test($data);exit();
      if (Columns::model()->updateByPk($v, $data)) {
        $s+=1;
      } else {
        $e+=1;
      }
    }
    if ($s == count($arr)) {
      $this->jsonOutPut(1, '排序成功');
    } elseif ($e > 0 AND $e < count($arr)) {
      $this->jsonOutPut(1, '部分排序成功');
    } else {
      $this->jsonOutPut(0, '排序失败，可能是未做修改');
    }
  }

  public function actionDelCredit() {
    $uid = Yii::app()->user->id;
    //$this->checkPower(array('uid' => $uid, 'type' => 'user_delcredit'));    
    $succ = 0;
    $_addedType = UserCredit::findOne($uid);
    if(!$_addedType){
      $this->jsonOutPut(0, '非常抱歉，未检测到认证信息');
    }
    if (!UserCredit::checkType($_addedType['classify'])) {
        $this->message(0, '不允许的认证类型，请核实');
    } else {
        $realModel = UserCredit::loadModel($_addedType['classify']);
    }
    if (UserInfo::model()->deleteAll('uid=:uid AND classify="addCredit"', array(':uid' => $uid))) {
      $succ++;
    }
    if (UserCredit::model()->updateAll(array('status'=>0),'uid=:uid',array(':uid'=>$uid))) {
      $succ++;
    }
    if($realModel->deleteAll('uid=:uid', array(':uid' => $uid))){
      $succ++;
    }
    if ($succ > 0) {
      $this->jsonOutPut(1, '删除认证信息成功');
    } else {
      $this->jsonOutPut(0, '删除认证信息成功');
    }
  }

  public function actionMessage() {
    $model=new Message;
    if (isset($_POST['ajax']) && $_POST['ajax'] === 'message-form') {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
    if (isset($_POST['Message'])) {
      Yii::app()->session['checkHasBadword'] = 'no';
      foreach($_POST['Message'] as $key=>$val){
        $_POST['Message'][$key]=zmf::filterInput($val,'t',1);
      }
      $ip = Yii::app()->request->userHostAddress;
      $_POST['Message']['ip']=  ip2long($ip);
      if (Yii::app()->session['checkHasBadword'] == 'yes') {
        $status = Posts::STATUS_STAYCHECK;
      } else {
        $status = Posts::STATUS_PASSED;
      }
      $_POST['Message']['status']=  $status;
      $_POST['Message']['localarea']=  zmf::filterInput($_POST['cityid'][0]);
      $_POST['Message']['uid']=  Yii::app()->user->id;
      $_POST['Message']['cTime']=  time();
      $model->attributes = $_POST['Message'];
      if ($model->save()){
        $this->jsonOutPut(1, '您的留言已提交');
      }else{
        $this->jsonOutPut(0, '数据错误');
      }
    }
  }

}
