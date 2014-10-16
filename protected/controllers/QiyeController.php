<?php

class QiyeController extends T {

  //public $layout = 'qiye';

  public function actionIndex() {
    $_sql = "SELECT * FROM {{producer}}";
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
        $lists[$key] = $list;
      }
    }
    $data['posts'] = $lists;
    $data['pages'] = $pages;
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
    $configs = UserCredit::model()->findAllByAttributes(array('classify' => 'producer', 'uid' => $uid));
    $userCredit = CHtml::listData($configs, 'name', 'value');
    $columns = Columns::userColumns($uid, '*');
    $selected = array();
    if (!empty($columns)) {
      if (!$colid && !$type) {
        $selected = $columns;
      } else {
        foreach ($columns as $col) {
          if ($col['id'] == $colid) {
            $selected[] = $col;
            break;
          }
        }
      }
    }
    $_sql = "SELECT * FROM {{goods}} WHERE status=" . Posts::STATUS_PASSED . " AND uid=" . $info['uid'] . " ORDER BY hits DESC";
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
    $_sql = "SELECT id,uid FROM {{lecturer}} WHERE status=" . Posts::STATUS_PASSED . " AND belongCompany='" . $info['id'] . "' ORDER BY hits DESC";
    $lecturers = Yii::app()->db->createCommand($_sql)->queryAll();
    if (!empty($lecturers)) {
      foreach ($lecturers as $key => $lecturer) {
        $_truename=Users::getUserInfo($lecturer['uid'],'truename');
        $lecturer['truename'] = $_truename;
        $lecturers[$key] = $lecturer;
      }
    }
    
    
    $data = array(
        'info' => $info,
        'goods' => $goods,
        'lecturers' => $lecturers,
        'creditInfo' => $userCredit,
        'uid' => $uid,
        'type' => $type,
        'columns' => $columns,
        'selected' => $selected,
        'colid' => $colid
    );
    $this->render('view', $data);
  }

}
