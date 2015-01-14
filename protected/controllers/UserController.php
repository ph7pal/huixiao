<?php

class UserController extends T {

    public $layout;
    public $uid;
    public $userInfo;
    public $mySelf;
    public $selectType;
    public $listTableTitle;
    public $columnDesc;
    public $logoImg;
    //一些通知
    public $validateEmail;
    public $noticeInfo;
    private $seekey;
    //显示边侧导航
    public $showNavs = false;
    //个人管理主页
    public $homeUrl;
    //是管理员
    public $isAdmin = false;

    public function actions() {
        return array(
          // captcha action renders the CAPTCHA image displayed on the contact page
          'captcha' => array(
            'class' => 'CCaptchaAction',
            'backColor' => 0xFFFFFF,
          ),
          // page action renders "static" pages stored under 'protected/views/site/pages'
          // They can be accessed via: index.php?r=site/page&view=FileName
          'page' => array(
            'class' => 'CViewAction',
          ),
        );
    }

    public function init() {
        parent::init();
        $code = zmf::filterInput($_GET['code'], 't', 1);
        $this->seekey = zmf::config('authorPre');
        if ($code != '' || isset(Yii::app()->session[$this->seekey])) {
            if ($code == '') {
                $code = Yii::app()->session[$this->seekey];
            }
            $code = tools::jieMi($code);
            $arr = explode('#', $code);
            if (count($arr) == 3) {
                if ((time() - $arr[1]) < 86400 && zmf::checkRight('a', $arr[2])) {
                    if (Yii::app()->user->isGuest) {
                        $this->message(0, Yii::t('default', 'loginfirst'), Yii::app()->createUrl('site/login'));
                    } else {
                        if ($arr[0] != Yii::app()->user->id) {
                            $this->checkPower('visitSthone');
                            $this->uid = $arr[0];
                            Yii::app()->session[$this->seekey] = $code;
                        } else {
                            $this->uid = Yii::app()->user->id;
                        }
                    }
                }
            }
        }
        if (!$this->uid) {
            if (Yii::app()->user->isGuest) {
                $this->message(0, Yii::t('default', 'loginfirst'), Yii::app()->createUrl('site/login'));
            } else {
                $this->uid = Yii::app()->user->id;
            }
        }
        if ($this->uid) {
            $this->layout = 'user';
            $this->userInfo = Users::getUserInfo($this->uid);
            if ($this->userInfo['status'] != Posts::STATUS_PASSED) {
                $this->renderPartial('/error/close', array('message' => '您的账号暂不能访问，如有疑问请咨询' . zmf::config('phone') . '或者' . zmf::config('email')));
                Yii::app()->end();
            }
            $this->checkUser(true);
        }
        $this->homeUrl = Yii::app()->createUrl('user/index');
        $this->pageTitle =  '个人管理中心 - ' . zmf::config('sitename');
    }

    public function checkUser($from = false) {
        $redirect = false;
        $nolimit = 0;
        $a = Yii::app()->getController()->getAction()->id;
        $gids = zmf::config('adminGroupIds');
        $arr = explode(',', $gids);
        if (in_array($this->userInfo['groupid'], $arr)) {
            $this->isAdmin = true;
        }
        if (!$this->userInfo['emailstatus']) {
            if (zmf::config('validateEmail')) {
                $this->validateEmail = '欲使用所有功能，请验证您的邮箱';
                $redirect = true;
                $nolimit+=1;
            }
        }
        if (!T::checkYesOrNo(array('uid' => $this->uid, 'type' => 'user_manage'))) {
            if (isset(Yii::app()->session[$this->seekey])) {
                $this->noticeInfo = '您正在以管理员身份查看该用户';
                return true;
            } else {
                if (zmf::config('forbidnotshop')) {
                    $nolimit+=1;
                    $this->message(0, '您所在用户组暂不能访问个人管理中心', Yii::app()->baseUrl);
                } else {
                    if (in_array($this->userInfo['groupid'], $arr)) {
                        $info = '管理本站与成为商家不能兼得';
                        $nolimit+=1;
                    } else {
                        //$info = '您还不是商家，欲使用所有功能请联系：' . zmf::config('phone') . '或者' . zmf::config('email');
                        //$_creditstatus = zmf::userConfig($this->uid, 'creditstatus');
                        $_addedType = UserCredit::findOne($this->uid);
                        if ($_addedType['status'] != Posts::STATUS_PASSED) {
                            if ($this->validateEmail != '') {
                                $info = '认证之前请先激活您的邮箱，' . CHtml::link('点此激活邮箱', 'javascript:;', array('class' => 'btn btn-danger btn-xs validate'));
                            } else {
                                $info = '您尚未认证，' . CHtml::link('点此进行认证', array('user/credit'), array('class' => 'btn btn-danger btn-xs'));
                            }
                            //$nolimit+=1;
                        }
                    }
                    $this->noticeInfo = $info;
                    $redirect = true;
                }
            }
        } else {
            //$_creditstatus = zmf::userConfig($this->uid, 'creditstatus');
            $_addedType = UserCredit::findOne($this->uid);
            if ($_addedType['status'] != Posts::STATUS_PASSED) {
                $info = '您还未认证，' . CHtml::link('点此进行认证', array('user/credit'), array('class' => 'btn btn-danger btn-xs'));
                $this->noticeInfo = $info;
            }
        }
        if ($redirect && !$from) {
            $this->redirect(array('user/index'));
        }
        if ($nolimit < 1) {
            $this->showNavs = true;
        }
    }

    private function checkColumn($colid) {
        if (!$colid) {
            T::message(0, '该版块不存在，请核实');
            exit();
        }
        $colinfo = Columns::getOne($colid);
        if (!$colinfo) {
            T::message(0, '该版块不存在，请核实');
            exit();
        } else {
            $columnGroup = ColumnRelation::model()->findAll('columnid=:colid', array(':colid' => $colid));
            $groupids = array_keys(CHtml::listData($columnGroup, 'groupid', ''));
            if (empty($columnGroup) || empty($groupids) || !in_array($this->userInfo['groupid'], $groupids)) {
                T::message(0, '您无权在该版块写文章，请核实');
                exit();
            }
        }
        return $colinfo;
    }

    public function actionIndex() {
        $data = array(
          'info' => $this->userInfo,
        );
        $this->render('index', $data);
    }

    public function actionConfig() {
        $this->checkUser();
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_setting', 'url' => $this->homeUrl));
        $this->layout = 'config';
        $type = zmf::filterInput($_GET['type'], 't', 1);
        if ($type == '' OR ! in_array($type, array('template', 'upload', 'page', 'siteinfo', 'base', 'column'))) {
            $type = 'base';
        }
        $this->selectType = $type;
        $configs = UserInfo::model()->findAllByAttributes(array('classify' => $type, 'uid' => $this->uid));
        $_c = CHtml::listData($configs, 'name', 'value');
        if ($type == 'column') {
            $columns = ColumnRelation::model()->findAll(array(
              'condition' => 'groupid=' . $this->userInfo['groupid'],
            ));
            $idsarr = array_keys(CHtml::listData($columns, 'columnid', ''));
            $idstr = join(',', $idsarr);
            if ($idstr == '') {
                $idstr = 0;
            }
            $configs = Columns::model()->findAll(array(
              'condition' => 'id IN(' . $idstr . ')',
            ));
            $items = CHtml::listData($configs, 'id', 'title');
        }
        $data = array(
          'c' => $_c,
          'items' => $items,
          'type' => $type,
          'model' => new Config()
        );
        $this->render('set_' . $type, $data);
    }

    public function actionSetConfig() {
        $this->checkUser();
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_setting', 'url' => $this->homeUrl));
        $type = zmf::filterInput($_POST['type'], 't', 1);
        if ($type == '' OR ! in_array($type, array('template', 'page', 'siteinfo', 'base', 'column'))) {
            $this->message(0, '不允许的操作');
        }
        unset($_POST['type']);
        unset($_POST['YII_CSRF_TOKEN']);
        $configs = $_POST;
        if (!empty($configs)) {
            UserInfo::model()->deleteAll('uid=' . $this->uid . ' AND classify="' . $type . '"');
            if ($type == 'column') {
                if (!empty($configs['columns'])) {
                    $configs = join(',', $configs['columns']);
                    $model = new UserInfo();
                    $data = array(
                      'uid' => $this->uid,
                      'name' => zmf::filterInput($type, 't'),
                      'value' => $configs,
                      'classify' => zmf::filterInput($type, 't')
                    );
                    $model->attributes = $data;
                    $model->save();
                }
                zmf::delFCache("userColumns-{$this->uid}");
            } else {
                foreach ($configs as $k => $v) {
                    if ($v != '') {
                        $model = new UserInfo();
                        $data = array(
                          'uid' => $this->uid,
                          'name' => zmf::filterInput($k, 't'),
                          'value' => zmf::filterInput($v, 't'),
                          'classify' => zmf::filterInput($type, 't')
                        );
                        $model->attributes = $data;
                        $model->save();
                    }
                }
            }
            zmf::delFCache("userSettings{$this->uid}");
        } else {
            UserInfo::model()->deleteAll('uid=' . $this->uid . ' AND classify="' . $type . '"');
            zmf::delFCache("userColumns-{$this->uid}");
            zmf::delFCache("userSettings{$this->uid}");
        }
        $this->redirect(array('user/config', 'type' => $type));
    }

    public function actionList() {
        $this->checkUser();
        $this->layout = 'user';
        $colid = zmf::filterInput($_GET['colid']);
        $table = zmf::filterInput($_GET['table'], 't', 1);
        if ($table == '' || !in_array($table, array('posts', 'ads', 'questions', 'comments', 'goods', 'jobs', 'zhanhui'))) {
            $table = 'posts';
        }
        if ($table == 'comments') {
            $this->checkPower(array('uid' => $this->uid, 'type' => 'user_checkcomments', 'url' => $this->homeUrl));
        } else {
            $this->checkPower(array('uid' => $this->uid, 'type' => 'user_addposts', 'url' => $this->homeUrl));
        }
        $where = 'WHERE uid=' . $this->uid . ' AND status IN(' . Posts::STATUS_PASSED . ',' . Posts::STATUS_STAYCHECK . ')';
        if ($colid) {
            $colinfo = $this->checkColumn($colid);
            $this->listTableTitle = $colinfo['title'];
            $_d = tools::columnDesc($colinfo['classify']);
            $this->columnDesc = '【' . $colinfo['title'] . '】' . $_d;
            $where.=' AND colid=' . $colid;
        }
        if ($table == 'ads') {
            $this->listTableTitle = '轮播展示';
        } elseif ($table == 'questions') {
            $this->listTableTitle = '在线提问';
        } elseif ($table == 'comments') {
            $this->listTableTitle = '用户评论或留言';
        } elseif ($table == 'goods') {
            $this->listTableTitle = '产品展示';
        } elseif ($table == 'jobs') {
            $this->listTableTitle = '招聘';
        } elseif ($table == 'zhanhui') {
            $this->listTableTitle = '展会';
        }
        if ($table == 'comments') {
            $sql = "SELECT * FROM {{comments}} WHERE logid IN(SELECT DISTINCT(id) FROM {{posts}} WHERE uid={$this->uid} AND status=" . Posts::STATUS_PASSED . ") AND status=" . Posts::STATUS_PASSED . " ORDER BY id DESC";
        } else {
            $sql = "SELECT * FROM {{{$table}}} {$where} ORDER BY id DESC";
        }
        Posts::getAll(array('sql' => $sql), $pages, $items);
        $data = array(
          'colid' => $colid,
          'pages' => $pages,
          'posts' => $items,
          'table' => $table
        );
        $this->render($table, $data);
    }

    public function actionAdd() {
        $this->checkUser();
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_addposts', 'url' => $this->homeUrl));
        $uid = $this->uid;
        $colid = zmf::filterInput($_GET['colid']);
        if (!$colid) {
            $this->message(0, '请选择栏目', Yii::app()->createUrl('user/index'));
        }
        $colinfo = $this->checkColumn($colid);
        $forupdate = zmf::filterInput($_GET['edit'], 't', 1);
        if ($forupdate != 'yes') {
            if (!Columns::checkWritable($colid, $uid)) {
                T::message(0, '您在该版块的文章数已达上限，您可以去编辑或删除');
                exit();
            } elseif (!Users::publishedNum('posts')) {
                T::message(0, '您本时段的发布次数已用完');
                exit();
            }
        }
        $model = new Posts();
        $keyid = zmf::getFCache("notSavePosts-{$uid}-{$colid}");
        $_keyid = zmf::filterInput($_GET['id']);
        if (!$keyid AND ! $_keyid) {
            $_info = $model->findByAttributes(array('uid' => $uid, 'colid' => $colid), 'status=:status', array(':status' => '0'));
            if (!$_info) {
                $model->attributes = array(
                  'status' => 0,
                  'uid' => $uid,
                  'colid' => $colid,
                  'cTime' => time(),
                  'title' => '',
                );
                $model->save(false);
                $keyid = $model->id;
            } else {
                $keyid = $_info['id'];
            }
            zmf::setFCache("notSavePosts-{$uid}-{$colid}", $keyid, 3600);
            $this->redirect(array('user/add', 'id' => $keyid, 'colid' => $colid));
        } elseif ($keyid != $_keyid AND $forupdate != 'yes') {
            if (!$keyid) {
                zmf::delFCache("notSavePosts-{$uid}-{$colid}");
                $this->message(0, '操作有误，正在为您重新跳转至发布页', Yii::app()->createUrl('user/add', array('colid' => $colid)));
            } else {
                $this->redirect(array('user/add', 'id' => $keyid, 'colid' => $colid));
            }
        } else {
            $keyid = $_keyid;
        }
        $info = $model->findByPk($keyid);
        if (!$info) {
            zmf::delFCache("notSavePosts-{$uid}-{$colid}");
            $this->message(0, '非常抱歉，您查看的页面不存在');
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'posts-addPost-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_POST['Posts'])) {
            $info = Publish::addPost($this->uid);
            if ($info === TRUE) {
                zmf::delFCache("notSavePosts-{$uid}-{$colid}");
                $this->redirect(array('user/list', 'colid' => $colid));
            }
        } else {
//            if ($info['attachid']) {
//                $info['attachid'] = tools::jiaMi($info['attachid']);
//            }
            $info['content'] = zmf::text(array('keyid' => $keyid, 'imgwidth' => '530', 'uid' => $this->uid), $info['content'], false, 600);
        }
        $this->listTableTitle = '新增【' . $colinfo['title'] . '】';
        $data = array(
          'keyid' => $keyid,
          'colinfo' => $colinfo,
          'tags' => $tags,
          'albums' => $albums,
          'info' => $info,
          'table' => 'posts',
          'model' => $model,
        );
        $this->render('addPost', $data);
    }

    public function actionAddAds() {
        $this->checkUser();
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_ads', 'url' => $this->homeUrl));
        $model = new Ads();
        $uid = $this->uid;
        $_info = $model->findByAttributes(array('status' => 0, 'uid' => $this->uid), 'classify=:classify', array(':classify' => 'empty'));
        $keyid = zmf::getFCache("notSaveAds{$uid}");
        $forupdate = zmf::filterInput($_GET['edit'], 't', 1);
        $_keyid = zmf::filterInput($_GET['id']);
        if (!$keyid AND ! $_keyid) {
            $_info = $model->findByAttributes(array('status' => 0, 'uid' => $this->uid), 'classify=:classify', array(':classify' => 'empty'));
            if (!$_info) {
                $model->attributes = array(
                  'uid' => $this->uid,
                  'status' => 0,
                  'classify' => 'empty',
                  'cTime' => time()
                );
                $model->save(false);
                $keyid = $model->id;
            } else {
                $keyid = $_info['id'];
            }
            zmf::setFCache("notSaveAds{$uid}", $keyid, 3600);
            $this->redirect(array('user/addads', 'id' => $keyid));
        } elseif ($keyid != $_keyid AND $forupdate != 'yes') {
            if (!$keyid) {
                zmf::delFCache("notSaveAds{$uid}");
                $this->message(0, '操作有误，正在为您重新跳转至发布页', Yii::app()->createUrl('user/addads'));
            } else {
                $this->redirect(array('user/addads', 'id' => $keyid));
            }
        } else {
            $keyid = $_keyid;
        }
        $info = $model->findByPk($keyid);
        if (!$info) {
            zmf::delFCache("notSaveAds{$uid}");
            $this->message(0, '非常抱歉，您查看的页面不存在');
        }

        if (isset($_POST['ajax']) && $_POST['ajax'] === 'ads-addAds-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_POST['Ads'])) {
            $_POST['Ads']['position'] = 'topbar';
            $_POST['Ads']['classify'] = 'flash';
            $info = Publish::addAds($this->uid);
            if (is_bool($info)) {
                $this->redirect(array('user/list', 'table' => 'ads'));
            }
        } else {
//            if ($info['attachid']) {
//                $info['attachid'] = tools::jiaMi($info['attachid']);
//            }
        }
        $data = array(
          'info' => $info,
          'table' => 'ads',
          'model' => $model,
        );
        $this->listTableTitle = '新增[轮播展示]';
        $this->render('addAds', $data);
    }

    public function actionAddQuestions() {
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_addquestion', 'url' => $this->homeUrl));
        $model = new Questions;
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'questions-addQuestions-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_POST['Questions'])) {
            $info = Publish::addQuestions($this->uid);
            if (is_bool($info)) {
                $url = Yii::app()->createUrl('user/list', array('table' => 'questions'));
                $this->message(1, '问题已提交，我们会尽快回复您！');
            }
        }
        $this->listTableTitle = '在线提问';
        $this->render('addQuestions', array('model' => $model));
    }

    public function actionGoods($id = '') {
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_goods', 'url' => $this->homeUrl));    
        if (!$id) {
            $model = new Goods;
        } else {
            $model = Goods::model()->findByPk($id);
            if (!$model) {
                T::message(0, '该页面不存在');
            } elseif ($model->uid != $this->uid) {
                T::message(0, '您的操作不被允许');
            }
        }
        if (isset($_POST['Goods'])) {
            if (!empty($_POST['tagids'])) {
                Yii::app()->session['checkHasBadword'] = 'no';
                $tagids = array_filter(array_unique($_POST['tagids']));
                if (!empty($tagids)) {
                    $_POST['Goods']['colid'] = $tagids[0];
                    $_POST['Goods']['colid2'] = $tagids[1];
                    $_POST['Goods']['colid3'] = $tagids[2];
                    $_POST['Goods']['colid4'] = $tagids[3];
                    $_POST['Goods']['colid5'] = $tagids[4];
                }
            }
            $_POST['Goods']['title'] = zmf::filterInput($_POST['Goods']['title'], 't', 1);
            $_POST['Goods']['piwen'] = zmf::filterInput($_POST['Goods']['piwen'], 't', 1);
            $_POST['Goods']['gongxiao'] = zmf::filterInput($_POST['Goods']['gongxiao'], 't', 1);
            $desc = zmf::filterInput($_POST['Goods']['desc'], 't');
            $desc = zmf::filterContent($desc, $postsImgs);
            $_POST['Goods']['desc'] = $desc;
            $_POST['Goods']['desc2'] = zmf::filterInput($_POST['Goods']['desc2'], 't');
            $_POST['Goods']['desc3'] = zmf::filterInput($_POST['Goods']['desc3'], 't');
            $_POST['Goods']['desc4'] = zmf::filterInput($_POST['Goods']['desc4'], 't');
            $arr_attachids = $_POST['uploadAttach'];
            if (Yii::app()->session['checkHasBadword'] == 'yes') {
                $status = Posts::STATUS_STAYCHECK;
            } else {
                $status = Posts::STATUS_PASSED;
            }
            Yii::app()->session['checkHasBadword'] = 'no';
            $_POST['Goods']['uid'] = $this->uid;
            $_POST['Goods']['status'] = $status;
            $_POST['Goods']['cTime'] = time();
            $model->attributes = $_POST['Goods'];
            if ($model->save()) {
                if (!empty($arr_attachids)) {
                    $ids = join(',', $arr_attachids);
                    if ($ids != '') {
                        Attachments::model()->updateAll(array('status' => Posts::STATUS_DELED), "logid=$model->id AND uid={$this->uid} AND classify='goods'");
                        Attachments::model()->updateAll(array('status' => Posts::STATUS_PASSED, 'logid' => $model->id), "id IN($ids) AND uid={$this->uid} AND classify='goods'");
                    }
                }
                if (!empty($postsImgs)) {
                    $ids = join(',', $postsImgs);
                    if ($ids != '') {
                        Attachments::model()->updateAll(array('status' => Posts::STATUS_DELED), "logid=$model->id AND uid={$this->uid} AND classify='goods'");
                        Attachments::model()->updateAll(array('status' => Posts::STATUS_PASSED, 'logid' => $model->id), "id IN($ids) AND uid={$this->uid} AND classify='goods'");
                    }
                }
                $this->redirect(array('user/list', 'table' => 'goods'));
            }
        }
        $tagids = $uploadImgs = array();
        if (!$model->isNewRecord) {
            $model->desc = zmf::text($model->id, $model->desc, false);
            $tagids[] = $model->colid;
            $tagids[] = $model->colid2;
            $tagids[] = $model->colid3;
            $tagids[] = $model->colid4;
            $tagids[] = $model->colid5;
            $tagids = array_unique(array_filter($tagids));

            $sql = "SELECT * FROM {{attachments}} WHERE classify='goods' AND logid='{$model->id}' AND status=" . Posts::STATUS_PASSED . " ORDER BY cTime DESC";
            $attaches = Yii::app()->db->createCommand($sql)->queryAll();
            if (!empty($attaches)) {
                foreach ($attaches as $key => $attachinfo) {
                    $uploadImgs[] = array(
                      'id' => $attachinfo['id'],
                      'url' => zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], '124') . '/' . $attachinfo['filePath']
                    );
                }
            }
        }
        $this->listTableTitle = '新增产品展示';
        $this->render('//goods/create', array(
          'model' => $model,
          'tagids' => $tagids,
          'uploadImgs'=>$uploadImgs
        ));
    }

    public function actionJobs($id = '') {
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_jobs', 'url' => $this->homeUrl));   
        $uid = $this->uid;
        $userCredit = UserCredit::findOne($uid);
        if(!$userCredit){
          $this->message(0, '请先认证');
        }elseif($userCredit['status']!=Posts::STATUS_PASSED){
          $this->message(0, '非常抱歉，您的认证信息暂未通过审核');
        }elseif(!in_array($userCredit['classify'],array('producer','marketing_team','exhibition'))){
          $this->message(0, '您的认证资料不允许发布招聘信息');
        }
        if ($id) {
            $model = Jobs::model()->findByPk($id);
            if ($model === null) {
                $this->message(0, '页面不存在', Yii::app()->createUrl('user/list', array('table' => 'jobs')));
            } elseif ($model->uid != $uid) {
                $this->message(0, '不允许的操作');
            }
        } else {
            $model = new Jobs;
        }
        if (isset($_POST['Jobs'])) {
            Yii::app()->session['checkHasBadword'] = 'no';
            $items = $_POST['Jobs'];
            if(!empty($_POST['cityid'])){
            	$tmparr = array_reverse(array_filter($_POST['cityid'])); 
	            $cityid = $tmparr[0];
	            $items['gz_didian'] = $cityid;
            }
            $fulis=$_POST['fulis'];
            $items['gz_fuli']=$fulis[0];
            foreach ($items as $key => $item) {
                $items[$key] = zmf::filterInput($item, 't', 1);
            }
            $_POST['Jobs'] = $items;
            if (Yii::app()->session['checkHasBadword'] == 'yes') {
                $status = Posts::STATUS_STAYCHECK;
            } else {
                $status = Posts::STATUS_PASSED;
            }
            Yii::app()->session['checkHasBadword'] = 'no';
            $_POST['Jobs']['uid'] = $uid;
            $_POST['Jobs']['status'] = $status;
            $_POST['Jobs']['cTime'] = time();
            $model->attributes = $_POST['Jobs'];
            if ($model->save()){
              if (!$model->isNewRecord) {
                FuliRelation::model()->deleteAll('jobid=:jobid',array(':jobid'=>$model->id));
              }
              if(!empty($fulis)){
                $fulis=  array_unique(array_filter($fulis));
                if(!empty($fulis)){
                  foreach($fulis as $fid){
                    $_attr=array(
                        'jobid'=>$model->id,
                        'fuliid'=>$fid
                    );
                    $_model=new FuliRelation;
                    $_model->attributes=$_attr;
                    $_model->save();
                  }
                }
              }
              $this->redirect(array('user/list', 'table' => 'jobs'));
            }                
        }
        $selectedFulis=array();
        if ($model->isNewRecord) {
            $this->listTableTitle = '新增招聘信息';            
            $realModel = UserCredit::loadModel($userCredit['classify']);
            $creditInfo=$realModel->find('uid='.$this->uid);
            $model->gs_title=$creditInfo['companyname'];
            $model->gs_miaoshu=$creditInfo['description'];
            $model->gs_didian=$model->gz_didian=$creditInfo['address'];
            if($userCredit['classify']=='producer'){
              $model->gs_zhuye=$creditInfo['companyurl'];
            }else{
              $model->gs_zhuye=$creditInfo['officeurl'];
            } 
            $model->gz_contactor=$creditInfo['contactname'];
            $model->gz_contact=$creditInfo['contactmobile'];
            
        } else {
          if(!empty($model->fulis)){
            $selectedFulis=array_keys(CHtml::listData($model->fulis,'fuliid',''));
          }
          $this->listTableTitle = '更新招聘信息';
        }
        $this->render('//jobs/create', array(
          'model' => $model,
          'selectedFulis'=>$selectedFulis
        ));
    }

    public function actionZhanhui($id = '') {
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_zhanhui', 'url' => $this->homeUrl));   
        $uid = Yii::app()->user->id;
        if ($id) {
            $model = Zhanhui::model()->findByPk($id);
            if ($model === null) {
                $this->message(0, '页面不存在', Yii::app()->createUrl('user/list', array('table' => 'zhanhui')));
            } elseif ($model->uid != $uid) {
                $this->message(0, '不允许的操作');
            }
        } else {
            $model = new Zhanhui;
        }
        if (isset($_POST['Zhanhui'])) {
            Yii::app()->session['checkHasBadword'] = 'no';
            if (!empty($_POST['cityid'])) {
                $tmparr = array_reverse(array_filter($_POST['cityid']));
                unset($_POST['cityid']);
            }
            $_localarea=zmf::filterInput($_POST['Zhanhui']['localarea']);
            if(!$tmparr[0] && $_localarea){
                $_POST['Zhanhui']['localarea'] = $_localarea;
            }else{
                $_POST['Zhanhui']['localarea'] = $tmparr[0];
            }
            $items = $_POST['Zhanhui'];
            if (isset($items['start_time'])) {
                $items['start_time'] = strtotime($items['start_time']);
            }
            if (isset($items['expired_time'])) {
                $items['expired_time'] = strtotime($items['expired_time']);
            }
            $content=$items['content'];
            foreach ($items as $key => $item) {
                $items[$key] = zmf::filterInput($item, 't', 1);
            }
            $items['content'] = zmf::filterContent($content, $arr_attachids);
            $_POST['Zhanhui'] = $items;
            if (Yii::app()->session['checkHasBadword'] == 'yes') {
                $status = Posts::STATUS_STAYCHECK;
            } else {
                $status = Posts::STATUS_PASSED;
            }
            Yii::app()->session['checkHasBadword'] = 'no';
            $_POST['Zhanhui']['uid'] = $uid;
            $_POST['Zhanhui']['status'] = $status;
            $_POST['Zhanhui']['cTime'] = time();
            $model->attributes = $_POST['Zhanhui'];
            if ($model->save()) {
                if (!empty($arr_attachids)) {
                    $ids = join(',', $arr_attachids);
                    if ($ids != '') {                        
                        Attachments::model()->updateAll(array('status' => Posts::STATUS_DELED), "logid=$model->id AND uid={$this->uid} AND classify='zhanhui'");
                        Attachments::model()->updateAll(array('status' => Posts::STATUS_PASSED, 'logid' => $model->id), "id IN($ids) AND uid={$this->uid} AND classify='zhanhui'");
                    }
                }
                $this->redirect(array('user/list', 'table' => 'zhanhui'));
            }else{
                $model->content=$content;
            }
        }
        if ($model->isNewRecord) {
            $this->listTableTitle = '新增展会信息';
            $model->start_time = '';
            $model->expired_time = '';
        } else {
            $this->listTableTitle = '更新展会信息';
            $model->start_time = date('Y/m/d', $model->start_time);
            $model->expired_time = date('Y/m/d', $model->expired_time);
            $model->content = zmf::text($model->id, $model->content, false);
        }
        $this->render('//zhanhui/create', array(
          'model' => $model,
        ));
    }

    public function actionUpdate() {
        if (isset($_POST) AND ! empty($_POST)) {
            $type = zmf::filterInput($_POST['type'], 't', 1);
            $model = new Users();
            if ($type == 'info') {
                unset($_POST['btn']);
                unset($_POST['type']);
                unset($_POST['csrfToken']);
                unset($_POST['username']);
                unset($_POST['truename']);
                unset($_POST['email']);
                $intoData = $_POST;
//                if ($intoData['email'] != $this->userInfo['email']) {
//                    $intoData['emailstatus'] = Posts::STATUS_NOTPASSED;
//                }
            } elseif ($type == 'passwd') {
                $old = zmf::filterInput($_POST['old_password'], 't', 1);
                $info = Users::model()->findByPk($this->uid);
                if (!$old) {
                    $this->message(0, '请输入原始密码');
                } elseif (md5($old.$info['hash']) != $info['password']) {
                    $this->message(0, '原始密码不正确');
                }
                if (!$_POST['password']) {
                    $this->message(0, '数据不全，请重新输入');
                } elseif (strlen($_POST['password']) < 5) {
                    $this->message(0, '新密码过短，请重新输入');
                }
                $intoData['password'] = md5($_POST['password'].$info['hash']);
            }
            if ($model->updateByPk($this->uid, $intoData)) {
                $this->message(1, '修改成功', Yii::app()->createUrl('user/update'));
            }
        }
        $data = array(
          'info' => $this->userInfo,
        );
        $this->render('update', $data);
    }

    public function actionStat() {
        $this->checkUser();
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_stat', 'url' => $this->homeUrl));
        $posts = Posts::model()->count('uid=' . $this->uid);
        $images = Attachments::model()->count('uid=' . $this->uid);
        //过去一周访问
        $_weekly = UserInfo::model()->findAllByAttributes(array('classify' => 'weekly', 'uid' => $this->uid));
        $weekly = CHtml::listData($_weekly, 'name', 'value');
        //这一年的访问
        $_yearly = UserInfo::model()->findAllByAttributes(array('classify' => 'yearly', 'uid' => $this->uid));
        $yearly = CHtml::listData($_yearly, 'name', 'value');
        $data = array(
          'postNum' => $posts,
          'attachNum' => $images,
          'visits' => '',
          'weekly' => $weekly,
          'yearly' => $yearly
        );
        $this->render('stat', $data);
    }

    public function actionCredit() {
        $this->checkUser();
        $this->checkPower(array('uid' => $this->uid, 'type' => 'user_credit', 'url' => $this->homeUrl));
        $type = zmf::filterInput($_GET['type'], 't', 1);
        $_addedType = UserCredit::findOne($this->uid);
        if ($_addedType && $_addedType['status']!=0) {
            $blocked = true;
        } else {
            $blocked = false;
        }
        $_c = array();
        if (!empty($_POST) && !$blocked) {
            $type = $_POST['type'];
            if (!UserCredit::checkType($type)) {
                $this->message(0, '不允许的认证类型，请核实');
            } else {
                $realModel = UserCredit::loadModel($type);
            }
            unset($_POST['type']);
            unset($_POST['btn']);
            $configs = $_POST;
            if(!empty($configs['cityid'])){
            	$tmparr = array_reverse(array_filter($configs['cityid']));            
	            unset($configs['cityid']);
	            $cityid = $tmparr[0];
	            $configs['localarea'] = $cityid;
            } 
            $mainproduct=array();
            if(!empty($_POST['mainproduct'])){
                $configs['mainproduct']=$_POST['mainproduct'][0];
                $mainproduct=$_POST['mainproduct'];
            }
            $configs['cTime'] = time();
            UserCredit::model()->deleteAll('uid=' . $this->uid);
            CreditRelation::model()->deleteAll('uid=' . $this->uid);
            TagRelation::model()->deleteAll('logid=' . $this->uid." AND classify='{$type}'");
            $realModel->deleteAll('uid=' . $this->uid);            
            $configs['uid'] = $this->uid;
            $configs['status'] = Posts::STATUS_STAYCHECK;
            $realModel->attributes = $configs;
            if (!$realModel->save()) {
                UserCredit::model()->deleteAll('uid=' . $this->uid);
                CreditRelation::model()->deleteAll('uid=' . $this->uid);
                $this->message(0, '写入认证信息出错');
            } else {
                $ip = Yii::app()->request->userHostAddress;
                $data = array(
                  'uid' => $this->uid,
                  'classify' => $type,
                  'localarea' => $configs['localarea'],
                  'cTime' => time(),
                  'status' => Posts::STATUS_STAYCHECK,
                  'ip' => ip2long($ip),
                );
                $model = new UserCredit;
                $model->attributes = $data;
                if (!$model->save()) {
                    
                }
            }
            $relarr = array(
              'uid' => $this->uid,
              'classify' => $type,
              'status' => Posts::STATUS_STAYCHECK,
              'cTime' => time(),
              'localarea' => $cityid
            );
            $modelCr = new CreditRelation();
            $modelCr->attributes = $relarr;
            $modelCr->save();            
            if(!empty($mainproduct)){
                foreach($mainproduct as $product){
                    $_pdattr=array(
                      'logid'=>$this->uid,
                      'tagid'=>$product,
                      'classify'=>$type
                    );
                    $_pdmodel=new TagRelation;
                    $_pdmodel->attributes=$_pdattr;
                    $_pdmodel->save();
                }
            }
            $redirect = Yii::app()->createUrl('user/credit');
            zmf::delFCache('userSettings' . $this->uid);
            $this->message(1, '您的资料已提交。', $redirect);
        }
        if ($_addedType['classify']) {
            $type = $_addedType['classify'];
        }
        $reason = $_addedType['desc'];
        $status = $_addedType['status'];
        $_c = array();
        if ($type) {
            if (!UserCredit::checkType($type)) {
                $this->message(0, '不允许的认证类型，请核实');
            } else {
                $realModel = UserCredit::loadModel($type);
                $_c = $realModel->find('uid=:uid', array(':uid' => $this->uid));
            }
        }
        $data = array(
          'type' => $type,
          'blocked' => $blocked,
          'info' => $_c,
          'status' => $status,
          'reason' => $reason,
        );
        $this->render('credit', $data);
    }

}
