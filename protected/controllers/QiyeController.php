<?php

class QiyeController extends T {

    //public $layout = 'qiye';

    public function actionIndex() {
        $localarea = zmf::filterInput($_GET['localarea']);
        $tagid = zmf::filterInput($_GET['tagid']);
        $medal = zmf::filterInput($_GET['medal'], 't', 1);
        $order = zmf::filterInput($_GET['order'], 't', 1);
        $_where = '';
        if (is_numeric($localarea) && $localarea > 0) {
            $localids = Area::getChildren($localarea);
            $localStr = join(',', $localids);
            $_where.=' AND localarea IN(' . $localStr . ')';
        }
        if ($medal) {
            $_where.=" AND medal='{$medal}'";
        }
        if(!in_array($order, array('hot','score'))){
            $order='';
        }
        //根据主营产品获取企业
        if ($tagid) {
            $tagArr = TagRelation::getTagsPosts($tagid);
            $tagArr = array_filter($tagArr);
            if (!empty($tagArr)) {
                $tagStr = join(',', $tagArr);
                if ($tagStr != '') {
                    $_where = " AND uid IN({$tagStr})";
                }
            }
        }
        $orderBy='cTime ASC';
        if($order=='hot'){
            $orderBy='hits DESC';
        }elseif($order=='score'){
            $orderBy='score DESC';
        }
        $_sql = "SELECT * FROM {{producer}} WHERE status=" . Posts::STATUS_PASSED . " {$_where} ORDER BY {$orderBy}";
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
        $areas = Area::listArea();
        $medals = Medal::getAll('qiye');
        $tags = Tags::allTags();
        $data['posts'] = $lists;
        $data['pages'] = $pages;
        $data['areas'] = $areas;
        $data['localarea'] = $localarea;
        $data['medals'] = $medals;
        $data['medalid'] = $medal;
        $data['tags'] = $tags;
        $data['tagid'] = $tagid;
        $data['order'] = $order;
        $this->pageTitle = '信用企业列表 - ' . zmf::config('sitename');
        $this->render('index', $data);
    }

    public function actionView($id) {
        $keyid = $id;
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
        $_sql = "SELECT id,title,faceimg FROM {{goods}} WHERE status=" . Posts::STATUS_PASSED . " AND uid=" . $info['uid'] . " ORDER BY hits DESC LIMIT 30";
        $goods = Yii::app()->db->createCommand($_sql)->queryAll();
        if (!empty($goods)) {
            foreach ($goods as $key => $good) {
                $faceurl = zmf::noImg('url');
                if ($good['faceimg'] > 0) {
                    $attachinfo = Attachments::getOne($good['faceimg']);
                    if ($attachinfo) {
                        $faceurl = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], '124') . '/' . $attachinfo['filePath'];
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
        $_sql = "SELECT id,title FROM {{jobs}} WHERE uid={$uid} AND status=" . Posts::STATUS_PASSED . " ORDER BY cTime DESC LIMIT 10";
        $jobs = Yii::app()->db->createCommand($_sql)->queryAll();

        //统计企业的产品和讲师
        $_goodsnum = Goods::model()->count('uid=:uid AND status=' . Posts::STATUS_PASSED, array(':uid' => $info['uid']));
        $_lecturersnum = Lecturer::model()->count('belongCompany=:id AND status=' . Posts::STATUS_PASSED, array(':id' => $info['id']));        
        //统计评分
        $scoreItems=  Score::model()->findAll('belongid=:beid AND classify=:class AND status=' . Posts::STATUS_PASSED,array(':beid'=>$keyid,':class'=>'qiye'));
        $scorer=$score=$score1=$score2=$score3=$score4=0;
        if(!empty($scoreItems)){
            $scorer=count($scoreItems);            
            foreach($scoreItems as $val){
                $score1+=$val['score3'];
                $score2+=$val['score4'];
                $score3+=$val['score5'];
                $score4+=$val['score6'];
            }
            $score1=  @number_format($score1/(2*$scorer), 1, '.', '');
            $score2=  @number_format($score2/(2*$scorer), 1, '.', '');
            $score3=  @number_format($score3/(2*$scorer), 1, '.', '');
            $score4=  @number_format($score4/(2*$scorer), 1, '.', '');
            $score=   @number_format(($score1+$score2+$score3+$score4)/4, 1, '.', '');
        }
        Producer::model()->updateByPk($info['id'], array('lecturers' => $_lecturersnum, 'goods' => $_goodsnum,'hits'=>($info['hits']+1),'score'=>$score,'scorer'=>$scorer,'score1'=>$score1,'score2'=>$score2,'score3'=>$score3,'score4'=>$score4));

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
        $this->pageTitle = $info['companyname'] . ' - ' . zmf::config('sitename');
        $this->render('view', $data);
    }

    public function actionScore($id) {
        $classify = zmf::filterInput($_GET['type'], 't', 1);
        if (!$classify || !in_array($classify, array('qiye', 'team', 'lecturer'))) {
            throw new CHttpException(404, '不存在的分类');
        }
        if (Yii::app()->user->isGuest) {
            $this->message(0, '请先登录', Yii::app()->createUrl('site/login'));
        } else {
            $uid = Yii::app()->user->id;
        }
        $_addedType = UserCredit::findOne($uid);
        if ($_addedType && $_addedType['status'] != Posts::STATUS_PASSED) {
            $this->message(0, '您的认证信息尚未通过，暂不能参与评价');
        } elseif (in_array($_addedType['classify'], array('agent', 'dealer'))) {
            $this->message(0, '非常抱歉，您的认证类型尚不能参与评价');
        } else {
            $hasInfo = Score::model()->find('uid=:uid AND belongid=:beid AND classify=:class', array(':uid' => $uid, ':beid' => $id, ':class' => $classify));
            if ($hasInfo) {
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
            if ($_POST['Score']['score2']) {
                $_POST['Score']['score2'] = strtotime($_POST['Score']['score2']);
            }
            $_POST['Score']['belongid'] = $id;
            $_POST['Score']['uid'] = $uid;
            $_POST['Score']['cTime'] = time();
            $_POST['Score']['ip'] = ip2long(Yii::app()->request->userHostAddress);
            $_POST['Score']['classify'] = $classify;
            $_POST['Score']['status'] = Posts::STATUS_PASSED;
            $arr_attachids = $_POST['uploadAttach'];
            $model->attributes = $_POST['Score'];
            if ($model->save()) {
                if (!empty($arr_attachids)) {
                    $ids = join(',', $arr_attachids);
                    if ($ids != '') {
                        Attachments::model()->updateAll(array('status' => Posts::STATUS_DELED), "logid={$model->belongid} AND uid={$uid} AND classify='scpre'");
                        Attachments::model()->updateAll(array('status' => Posts::STATUS_PASSED, 'logid' => $model->belongid), "id IN($ids) AND uid={$uid} AND classify='score'");
                    }
                }
                $this->message(1, '请作等待，我们将尽快审核您的评价', Yii::app()->createUrl('qiye/view', array('id' => $id)));
            }
        }
        $model->classify = $classify;
        $model->belongid = $id;        
        $title = $info['companyname'];
        $this->pageTitle = '评价【'.$title.'】 - ' . zmf::config('sitename');
        $this->render('score', array('model' => $model, 'info' => $info, 'title' => $title));
    }

}
