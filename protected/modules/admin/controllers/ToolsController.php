<?php

class ToolsController extends H {

  public $layout = 'admin';

  public function actionIndex() {
    $type = zmf::filterInput($_GET['type'], 't', 1);
    if ($type == 'db') {
      $this->redirect(array('db/index'));
    }
    $data = array(
        'type' => $type,
    );
    $this->render('index', $data);
  }

  public function actionFunc() {
    $type = zmf::filterInput($_GET['type'], 't', 1);
    if (!$type || !in_array($type, array('assets', 'runtime', 'config'))) {
      $this->message(0, '操作有误，不允许的操作类型', Yii::app()->createUrl('admin/tools/index'));
    }
    switch ($type) {
      case 'assets':
        $dir = Yii::app()->basePath . '/../assets/';
        header("Content-type:text/html;charset=UTF-8");
        zmf::destory($dir); //script
        $this->message('script', '删除成功', Yii::app()->createUrl('admin/tools/index'));
        break;
      case 'runtime':
        $dir = Yii::app()->basePath . '/runtime/';
        header("Content-type:text/html;charset=UTF-8");
        zmf::destory($dir);
        $this->message('script', '删除成功', Yii::app()->createUrl('admin/tools/index'));
        break;
      case 'config':
        tools::writeSet(array());
        $this->message('script', '删除成功', Yii::app()->createUrl('admin/tools/index'));
        break;
      default:
        $this->message(0, '操作有误，不允许的操作类型', Yii::app()->createUrl('admin/tools/index'));
    }
  }

}
