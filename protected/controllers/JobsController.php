<?php

class JobsController extends T {

  /**
   * Displays a particular model.
   * @param integer $id the ID of the model to be displayed
   */
  public function actionView($id) {
    $info = $this->loadModel($id);
    $this->render('view', array(
        'info' => $info
    ));
  } 

  /**
   * Lists all models.
   */
  public function actionIndex() {
    //$order=zmf::filterInput($_GET['order'],'t',1);
    $uid=zmf::filterInput($_GET['uid']);
    $localarea=zmf::filterInput($_GET['localarea']);
    $fuliid=zmf::filterInput($_GET['fuli']);
    $_where='';
    if(is_numeric($uid) && $uid>0){
      $_where.=' AND uid='.$uid;
    }
    $_sql = "SELECT * FROM {{jobs}} WHERE status=".Posts::STATUS_PASSED.$_where.' ORDER BY cTime DESC';
    Posts::getAll(array('sql' => $_sql), $pages, $lists);
    $areas=Area::listArea();
    $fulis=Fuli::getAll();
    $data['posts'] = $lists;
    $data['pages'] = $pages;
    $data['areas'] = $areas;
    $data['localarea'] = $localarea;
    $data['fulis'] = $fulis;
    $data['fuliid'] = $fuliid;
    $this->render('index', $data);
  }

  /**
   * Manages all models.
   */
  public function actionAdmin() {
    $model = new Jobs('search');
    $model->unsetAttributes();  // clear any default values
    if (isset($_GET['Jobs']))
      $model->attributes = $_GET['Jobs'];

    $this->render('admin', array(
        'model' => $model,
    ));
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer $id the ID of the model to be loaded
   * @return Jobs the loaded model
   * @throws CHttpException
   */
  public function loadModel($id) {
    $model = Jobs::model()->findByPk($id);
    if ($model === null)
      throw new CHttpException(404, 'The requested page does not exist.');
    return $model;
  }

  /**
   * Performs the AJAX validation.
   * @param Jobs $model the model to be validated
   */
  protected function performAjaxValidation($model) {
    if (isset($_POST['ajax']) && $_POST['ajax'] === 'jobs-form') {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }

}
