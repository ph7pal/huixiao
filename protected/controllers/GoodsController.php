<?php

class GoodsController extends T {

  /**
   * Displays a particular model.
   * @param integer $id the ID of the model to be displayed
   */
  public function actionView($id) {
    $info = $this->loadModel($id);
    $faceurls = array();
    $faceimg = '';
    $sql = "SELECT * FROM {{attachments}} WHERE classify='goods' AND logid='{$id}' AND status=" . Posts::STATUS_PASSED . " ORDER BY cTime DESC";
    $attaches = Yii::app()->db->createCommand($sql)->queryAll();
    if (!empty($attaches)) {
      foreach ($attaches as $key => $attachinfo) {
        if ($key == 0) {
          $faceimg = zmf::uploadDirs(0, 'site', $attachinfo['classify'], '600') . $attachinfo['filePath'];
        }
        $faceurls[] = zmf::uploadDirs(0, 'site', $attachinfo['classify'], '600') . $attachinfo['filePath'];
      }
    }
    $this->render('view', array(
        'info' => $info,
        'faceimg' => $faceimg,
        'faceurls' => $faceurls
    ));
    //$this->render('view');
  }

  /**
   * Updates a particular model.
   * If update is successful, the browser will be redirected to the 'view' page.
   * @param integer $id the ID of the model to be updated
   */
  public function actionUpdate($id) {
    $model = $this->loadModel($id);

    // Uncomment the following line if AJAX validation is needed
    // $this->performAjaxValidation($model);

    if (isset($_POST['Goods'])) {
      $model->attributes = $_POST['Goods'];
      if ($model->save())
        $this->redirect(array('view', 'id' => $model->id));
    }

    $this->render('update', array(
        'model' => $model,
    ));
  }

  /**
   * Deletes a particular model.
   * If deletion is successful, the browser will be redirected to the 'admin' page.
   * @param integer $id the ID of the model to be deleted
   */
  public function actionDelete($id) {
    $this->loadModel($id)->delete();

    // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
    if (!isset($_GET['ajax']))
      $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
  }

  /**
   * Lists all models.
   */
  public function actionIndex() {
    $_sql = "SELECT * FROM {{goods}}";
    Posts::getAll(array('sql' => $_sql), $pages, $lists);
    $tags = Tags::allTags();
    if (!empty($lists)) {
      foreach ($lists as $key => $goods) {
        $faceurl = zmf::noImg('url');
        if ($goods['faceimg'] > 0) {
          $attachinfo = Attachments::getOne($goods['faceimg']);
          if ($attachinfo) {
            $faceurl = zmf::uploadDirs(0, 'site', $attachinfo['classify'], '200') . $attachinfo['filePath'];
          }
        }
        $goods['faceurl'] = $faceurl;
        $lists[$key] = $goods;
      }
    }
    $data['posts'] = $lists;
    $data['pages'] = $pages;
    $data['fieldsArr'] = $fieldsArr;
    $data['tags'] = $tags;
    $data['selectedTags'] = $selectedTags;
    $this->render('index', $data);
  }

  /**
   * Manages all models.
   */
  public function actionAdmin() {
    $model = new Goods('search');
    $model->unsetAttributes();  // clear any default values
    if (isset($_GET['Goods']))
      $model->attributes = $_GET['Goods'];

    $this->render('admin', array(
        'model' => $model,
    ));
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer $id the ID of the model to be loaded
   * @return Goods the loaded model
   * @throws CHttpException
   */
  public function loadModel($id) {
    $model = Goods::model()->findByPk($id);
    if ($model === null)
      throw new CHttpException(404, 'The requested page does not exist.');
    return $model;
  }

  /**
   * Performs the AJAX validation.
   * @param Goods $model the model to be validated
   */
  protected function performAjaxValidation($model) {
    if (isset($_POST['ajax']) && $_POST['ajax'] === 'goods-form') {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }

}