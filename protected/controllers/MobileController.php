<?php

class MobileController extends T {

    public $layout = 'mobile';
    public $uid;
    public $userInfo;
    public $userCols = array();
    public $colid;
    public $namapre;

    public function init() {
        parent::init();
        $this->uid = zmf::filterInput($_GET['uid']);
        if (!$this->uid) {
            $this->message(0, '请选择需要查看的用户');
        }
        $uid = $this->uid;
        if ($uid != Yii::app()->user->id) {
            $this->namapre = '该用户的主页';
        } else {
            $this->namapre = '您的主页';
        }
        $userCredit = UserCredit::findOne($uid);
        if($userCredit['classify']=='producer'){
          $this->redirect(array('qiye/index','id'=>$uid));
        }elseif($userCredit['classify']=='marketing_team'){
          $this->redirect(array('team/index','id'=>$uid));
        }elseif($userCredit['classify']=='lecturer'){
          $this->redirect(array('lecturer/index','id'=>$uid));
        }elseif($userCredit['classify']=='exhibition'){
          $this->redirect(array('exhibition/index','id'=>$uid));
        }
        $_close = zmf::userConfig($uid, 'closeSite');
        if (!$_close) {
            $_closeRea = zmf::userConfig($uid, 'closeSiteReason');
            if ($_closeRea == '') {
                $_closeRea = $this->namapre . '暂未开启访问。';
            }
            $this->_closed($_closeRea);
            Yii::app()->end();
        }
        if (!T::checkYesOrNo(array('uid' => $this->uid, 'type' => 'user_homepage'))) {
            $_closeRea = $this->namapre . '暂未开启访问。';
            $this->_closed($_closeRea);
            Yii::app()->end();
        }
        $this->userInfo = Users::getUserInfo($this->uid);
        if ($this->userInfo['status'] != Posts::STATUS_PASSED) {
            $this->_closed($this->namapre . '暂不能访问，如有疑问请咨询' . zmf::config('phone') . '或者' . zmf::config('email'));
            Yii::app()->end();
        }
        $gids = zmf::config('adminGroupIds');
        $arr = explode(',', $gids);
        if (in_array($this->userInfo['groupid'], $arr)) {
            $this->_closed($this->namapre . '暂不开放访问。');
            Yii::app()->end();
        }
        if (zmf::checkmobile()) {
            Yii::app()->theme = 'mobile';
        }

//        else {
//            Yii::app()->theme = 'mobile';
//            $_hash=tools::jiaMi($this->uid.$this->userInfo['truename']);
//            if($_GET['hash']!=$_hash && Yii::app()->session['forceMobile']!='yes'){
//                $this->_closed();
//            }elseif(!isset(Yii::app()->session['forceMobile'])){
//                Yii::app()->session['forceMobile'] = 'yes';
//            }            
//        }
        $cols = Columns::userColumns($this->uid);
        $this->userCols = $cols;
        $this->pageTitle = zmf::userConfig($this->uid, 'sitename') . ' - ' . zmf::userConfig($this->uid, 'shortTitle');
        $this->keywords = zmf::userConfig($this->uid, 'siteKeywords');
        $this->pageDescription = zmf::userConfig($this->uid, 'siteDesc');
        if (date('w') < 1) {
            $week = 7;
        } else {
            $week = date('w');
        }
        $month = date('n');
        //更新每天访问次数
        UserInfo::updateCounter($this->uid, 'weekly', $week, 1);
        //更新每月访问次数
        UserInfo::updateCounter($this->uid, 'yearly', $month, 1);
    }

    public function _closed($reason = '') {
        if ($reason == '') {
            $url = zmf::config('domain') . Yii::app()->createUrl('mobile/index', array('uid' => $this->uid));
            $qrcodeUrl = zmf::qrcode($url, 'users', $this->uid);
            $reason = '为达到更真实的访问效果，建议手机访问<br/>"' . $url . '",<br/>或扫描二维码：<br/><img src="' . $qrcodeUrl . '"/><br/>或' . CHtml::link('访问响应版', array('mobile/index', 'uid' => $this->uid, 'hash' => tools::jiaMi($this->uid . $this->userInfo['truename'])));
        }
        if (Yii::app()->request->isAjaxRequest) {
            self::jsonOutPut(0, $reason);
        }
        parent::_closed($reason);
    }

    public function actionIndex() {
        $colid = zmf::filterInput($_GET['colid']);
        $cols = array();
        if ($colid) {
            $this->colid = $colid;
            $cols[] = array('id' => $colid);
        } else {
            $cols = $this->userCols;
        }
        $data = array(
            'cols' => $cols,
        );
        $this->render('index', $data);
    }

    public function indexBak() {
        //次版本为首页显示一个栏目
        //对应模板为bak
        $colid = zmf::filterInput($_GET['colid']);
        if (!$colid) {
            $colid = $this->userCols[0]['id'];
        }
        if ($colid) {
            $this->colid = $colid;
            $colinfo = Columns::getOne($colid);
            $sql = "SELECT * FROM {{posts}} WHERE colid={$colid} AND uid={$this->uid} ORDER BY cTime DESC";
            if ($colinfo['classify'] == 'page') {
                $items = Yii::app()->db->createCommand($sql)->queryAll();
            } else {
                Posts::getAll(array('sql' => $sql), $pages, $items);
            }
        }

        $data = array(
            'colinfo' => $colinfo,
            'pages' => $pages,
            'posts' => $items
        );
        $this->render('index', $data);
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
        $this->colid = $info['colid'];
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
        $_sql = 'SELECT id,title FROM {{posts}} WHERE colid=' . $colinfo['id'] . ' AND uid=' . $this->uid . ' AND id!=' . $keyid . ' AND status=' . Posts::STATUS_PASSED;
        Posts::getAll(array('sql' => $_sql), $_page, $likes);
        $_sql2 = "SELECT * FROM {{comments}} WHERE logid='{$keyid}' AND status=1 ORDER BY cTime DESC";
        Posts::getAll(array('sql' => $_sql2), $pages, $coms);
        $_sql3 = "SELECT * FROM {{posts}} WHERE colid!='{$info['colid']}' AND uid={$this->uid} AND status=1 ORDER BY cTime DESC";
        Posts::getAll(array('sql' => $_sql3), $_page3, $others);
        $data = array(
            'from' => 'show',
            'preInfo' => $preInfo,
            'nextInfo' => $nextInfo,
            'data' => $info,
            'colinfo' => $colinfo,
            'likes' => $likes,
            'coms' => $coms,
            'pages' => $pages,
            'others' => $others
        );
        $this->pageTitle = $info['title'] . ' - ' . $colinfo['title'] . ' - ' . zmf::config('sitename');
        $this->render('page', $data);
    }

    public function actionScore() {
        if (!Yii::app()->request->isAjaxRequest) {
            $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
        }
        if (Yii::app()->user->isGuest) {
            $this->jsonOutPut(0, Yii::t('default', 'loginfirst'));
        }
        if ($this->uid != Yii::app()->user->id) {
            $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
        }
        $score = zmf::filterInput($_POST['rating']);
        if (!$score) {
            $this->jsonOutPut(0, '请打一个分数吧');
        }
        $desc = zmf::filterInput($_POST['description'], 't', 1);
        if (!$desc) {
            $this->jsonOutPut(0, '请作一个简短的描述');
        }
        $touid = zmf::filterInput($_POST['touid']);
        if (!$touid) {
            $this->jsonOutPut(0, '不被允许的操作');
        }
        if ($touid == Yii::app()->user->id) {
            $this->jsonOutPut(0, '您不能给自己评价');
        }
        $_info = Favor::model()->find('uid=:uid AND logid=:logid AND classify="rating"', array(':uid' => $this->uid, ':logid' => $touid));
        if ($_info) {
            $this->jsonOutPut(0, '您已评价过，请勿重复操作');
        } else {
            $_data = array(
                'uid' => Yii::app()->user->id,
                'logid' => $touid,
                'classify' => 'rating',
                'content' => $desc,
                'cTime' => time(),
                'score' => $score,
            );
            $model = new Favor;
            $model->attributes = $_data;
            if ($model->save()) {
                zmf::delFCache("userScore-$touid");
                $this->jsonOutPut(1, '已评价成功');
            } else {
                $this->jsonOutPut(0, '抱歉，评价失败，请重试');
            }
        }
    }

}
