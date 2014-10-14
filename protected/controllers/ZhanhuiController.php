<?php

class ZhanhuiController extends T {

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
    $_sql = "SELECT * FROM {{zhanhui}}";
    Posts::getAll(array('sql' => $_sql), $pages, $lists);
    $data['posts'] = $lists;
    $data['pages'] = $pages;
    $this->render('index', $data);
  }

  /**
   * Manages all models.
   */
  public function actionAdmin() {
    $model = new Zhanhui('search');
    $model->unsetAttributes();  // clear any default values
    if (isset($_GET['Zhanhui']))
      $model->attributes = $_GET['Zhanhui'];

    $this->render('admin', array(
        'model' => $model,
    ));
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer $id the ID of the model to be loaded
   * @return Zhanhui the loaded model
   * @throws CHttpException
   */
  public function loadModel($id) {
    $model = Zhanhui::model()->findByPk($id);
    if ($model === null)
      throw new CHttpException(404, 'The requested page does not exist.');
    return $model;
  }

  /**
   * Performs the AJAX validation.
   * @param Zhanhui $model the model to be validated
   */
  protected function performAjaxValidation($model) {
    if (isset($_POST['ajax']) && $_POST['ajax'] === 'zhanhui-form') {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }

}
