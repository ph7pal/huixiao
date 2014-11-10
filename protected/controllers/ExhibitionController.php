<?php

class ExhibitionController extends T {

  public $layout = 'zhanhui';

  public function actionIndex() {
    $area = zmf::filterInput($_GET['area']);
    $credit = zmf::filterInput($_GET['credit']);
    $_where='';
    if(is_numeric($area) && $area>0){
      $_where.=' AND localarea='.$area;
    }
    if(is_numeric($credit) && $credit>0){
      $_where.=' AND medal='.$credit;
    }
    $_sql = "SELECT * FROM {{exhibition}} WHERE status=".Posts::STATUS_PASSED.$_where;
    Posts::getAll(array('sql' => $_sql), $pages, $lists);
    foreach ($lists as $key => $list) {
      $zhanhui = Zhanhui::getUsers($list['uid']);
      foreach ($zhanhui as $_key => $_list) {
        if ($_list['start_time'] < time()) {
          Zhanhui::model()->updateByPk($_list['id'], array('status' => Posts::STATUS_DELED));
        }
        $faceurl = zmf::noImg('url');
        if ($_list['attachid'] > 0) {
          $attachinfo = Attachments::getOne($_list['attachid']);
          if ($attachinfo) {
            $faceurl = zmf::uploadDirs(0, 'site', $attachinfo['classify'], '200') . $attachinfo['filePath'];
          }
        }
        $_list['faceurl'] = $faceurl;
        $zhanhui[$_key] = $_list;
      }
      $list['zhanhuis'] = $zhanhui;
      $lists[$key] = $list;
    }
    $areas = Area::listArea();
    $data['posts'] = $lists;
    $data['areas'] = $areas;
    $data['pages'] = $pages;
    $this->render('index', $data);
  }

  public function actionView() {
    $keyid = zmf::filterInput($_GET['id']);
    $colid = zmf::filterInput($_GET['colid']);
    if (!$keyid) {
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $info = Exhibition::model()->findByPk($keyid);
    if (!$info) {
      $this->message(0, '您要查看的页面不存在，请核实');
    }
//    $uid = $info['uid'];
//    $userCredit = UserCredit::findOne($uid);
//    if (!$userCredit || $userCredit['classify'] != 'exhibition') {
//      $this->message(0, '您要查看的页面不存在，请核实');
//    }
    $columns = Columns::userColumns($uid, '*');
    $selected = array();
    if (!empty($columns)) {
      if (!$colid) {
        $selected = $columns;
      } else {
        foreach ($columns as $col) {
          if ($col['id'] == $colid) {
            $selected[] = $col;
            break;
          }
        }
      }
      foreach ($columns as $key => $col) {
        $_colitems = Posts::allPosts(array('colid' => $col['id'], 'top' => 0, 'fields' => 'id,title,attachid,cTime', 'order' => 'hits'), 10, $uid);
        $col['posts'] = $_colitems;
        $columns[$key] = $col;
      }
    }
    $_sql = "SELECT * FROM {{zhanhui}} WHERE status=" . Posts::STATUS_PASSED . " AND uid=" . $info['uid'] . " ORDER BY cTime DESC";
    $zhanhuis = Yii::app()->db->createCommand($_sql)->queryAll();
    if (!empty($zhanhuis)) {
      foreach ($zhanhuis as $key => $good) {
        $faceurl = zmf::noImg('url');
        if ($good['faceimg'] > 0) {
          $attachinfo = Attachments::getOne($good['faceimg']);
          if ($attachinfo) {
            $faceurl = zmf::uploadDirs(0, 'site', $attachinfo['classify'], '124') . $attachinfo['filePath'];
          }
        }
        $good['faceurl'] = $faceurl;
        $zhanhuis[$key] = $good;
      }
    }
    $_sql = "SELECT id,title FROM {{jobs}} WHERE uid={$info['uid']} AND status=".Posts::STATUS_PASSED." ORDER BY cTime DESC LIMIT 10";
    $jobs = Yii::app()->db->createCommand($_sql)->queryAll();
    $data = array(
        'info' => $info,
        'jobs' => $jobs,
        'zhanhuis' => $zhanhuis,
        'uid' => $uid,
        'columns' => $columns,
        'selected' => $selected,
        'colid' => $colid
    );
    $this->render('view', $data);
  }

}
