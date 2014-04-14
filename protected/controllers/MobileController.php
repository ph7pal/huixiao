<?php

class MobileController extends T {

    public $layout = 'main';
    public $uid;
    public $userCols=array();
    public $colid;
    
    public function init() {
        parent::init();
        Yii::app()->theme = 'mobile';
        $this->uid=zmf::filterInput($_GET['uid']);
        if(!$this->uid){
            $this->message(0, '请选择需要查看的商铺');
        }
        $cols=Columns::userColumns($this->uid);
        $this->userCols=$cols;
    }

    public function actionIndex() {
        $colid=zmf::filterInput($_GET['colid']);
        if(!$colid){
            $colid=  $this->userCols[0]['id'];
        }
        if($colid){
            $this->colid=$colid;
            $colinfo=  Columns::getOne($colid);
            $sql = "SELECT * FROM {{posts}} WHERE colid={$colid} AND uid={$this->uid} ORDER BY cTime DESC";
            if($colinfo['classify']=='page'){
                $items=Yii::app()->db->createCommand($sql)->queryAll();
            }else{                
                Posts::getAll(array('sql' => $sql), $pages, $items);
            }            
        }
        
        $data=array(
            'colinfo'=>$colinfo,
            'pages'=>$pages,
            'posts'=>$items
        );
        $this->render('index', $data);
    }
    public function actionComment() {
        if (!Yii::app()->request->isAjaxRequest) {
            $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
        }
//        if (Yii::app()->user->isGuest) {
//            $this->jsonOutPut(0, Yii::t('default', 'loginfirst'));
//        }
        $keyid = zmf::filterInput($_GET['id']);
        if (!isset($keyid) OR !is_numeric($keyid)) {
            $this->jsonOutPut(0, Yii::t('default', 'pagenotexists'));
        }
        $type = zmf::filterInput($_GET['type'], 't', 1);
        if (!isset($type) OR !in_array($type, array('posts', 'image'))) {
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
            //Yii::app()->session['checkHasBadword']='no';
            $_logid = zmf::filterInput($_POST['Comments']['logid']);
            if ($keyid != $_logid) {
                $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
            }
            $inputData=$_POST['Comments'];
            $inputData['logid'] = $keyid;
            $content = zmf::filterInput($_POST['Comments']['content'], 't', 1);
            if (empty($content)) {
                $this->jsonOutPut(0, '评论内容不能为空');
            } elseif (md5($content) == md5('请输入内容...')) {
                $this->jsonOutPut(0, '评论内容不能为空');
            }                       
            $inputData['status'] = 1;
            $inputData['uid'] = Yii::app()->user->id;
            $inputData['cTime'] = time();
            $ip = Yii::app()->request->userHostAddress; 
            $inputData['ip'] = ip2long($ip);
            if($inputData['email']!=''){
                $inputData['email']=  tools::jiaMi($inputData['email']);
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
    public function actionShow() {
        $keyid = zmf::filterInput($_GET['id']);
        if (!$keyid) {
            $this->message(0, '请选择要查看的页面');
        }
        $info = Posts::model()->findByPk($keyid);
        if (!$info) {
            $this->message(0, '您所查看的文章不存在，请核实');
        } elseif ($info['status'] < 1) {
            $this->message(0, '您要查看的文章未通过审核');
        }
        $this->colid=$info['colid'];
        $colinfo = Columns::model()->findByPk($info['colid']);
        $sql1 = "SELECT id,title FROM {{posts}} WHERE id>:id AND colid=:colid AND status=1 ORDER BY id ASC LIMIT 1";
        $sql2 = "SELECT id,title FROM {{posts}} WHERE id<:id AND colid=:colid AND status=1 ORDER BY id DESC LIMIT 1";
        $nextInfo = Posts::model()->findBySql($sql1, array(':id' => $keyid, ':colid' => $info['colid']));
        $preInfo = Posts::model()->findBySql($sql2, array(':id' => $keyid, ':colid' => $info['colid']));

        if (empty($nextInfo)) {
            //已到最后张，则返回第一张
            $sql3 = "SELECT id,title FROM {{posts}} WHERE colid=:colid AND status=1 ORDER BY id ASC LIMIT 0,1";
            $nextInfo = Posts::model()->findBySql($sql3, array(':colid' => $info['colid']));
        }
        if (empty($preInfo)) {
            //已到第一张，则返回第后张
            $sql4 = "SELECT id,title FROM {{posts}} WHERE colid=:colid AND status=1 ORDER BY id DESC LIMIT 1";
            $preInfo = Posts::model()->findBySql($sql4, array(':colid' => $info['colid']));
        }        
        Posts::model()->updateCounters(array('hits' => 1), ':id=id', array(':id' => $keyid));
        $data = array(
            'from'=>'show',
            'preInfo' => $preInfo,
            'nextInfo' => $nextInfo,
            'data' => $info,
            'colinfo' => $colinfo,
        );
        $this->pageTitle = $info['title'] . ' - ' . $colinfo['title'] . ' - ' . zmf::config('sitename');
        $this->render('page', $data);
    }

}