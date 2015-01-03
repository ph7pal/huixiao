<?php

class JobsController extends T {

  /**
   * Displays a particular model.
   * @param integer $id the ID of the model to be displayed
   */
  public function actionView($id) {
    $info = $this->loadModel($id);
    if(is_numeric($info['gz_didian'])){
      $_localname=  Area::getOne($info['gz_didian'],'name');
      $info['gz_didian']=$_localname;
    }   
    $this->pageTitle =  $info['title'].' - ' . zmf::config('sitename');
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
    $fuliid=zmf::filterInput($_GET['fuli']);//按福利筛选
    $selectZhiwei=zmf::filterInput($_GET['type']);//按职位筛选
    $_where='';
    if(is_numeric($uid) && $uid>0){
      $_where.=' AND uid='.$uid;
    }
    if(is_numeric($localarea) && $localarea>0){
      $localids=  Area::getChildren($localarea);
      $localStr=join(',',$localids);
      $_where.=' AND gz_didian IN('.$localStr.')';
    }
    if(is_numeric($selectZhiwei) && $selectZhiwei>0){
      $_where.=" AND gz_zhiwei='".$selectZhiwei."'";  
    }
    $_sql = "SELECT * FROM {{jobs}} WHERE status=".Posts::STATUS_PASSED.$_where.' ORDER BY cTime DESC';
    Posts::getAll(array('sql' => $_sql), $pages, $lists);
    if(!empty($lists)){
      foreach($lists as $k=>$v){
        if(is_numeric($v['gz_didian'])){
          $_localname=  Area::getOne($v['gz_didian'],'name');
          $lists[$k]['gz_didian']=$_localname;
        }   
      }
    }
    $areas=Area::listArea();
    $fulis=Fuli::getAll();
    $data['posts'] = $lists;
    $data['pages'] = $pages;
    $data['areas'] = $areas;
    $data['localarea'] = $localarea;
    $data['fulis'] = $fulis;
    $data['fuliid'] = $fuliid;
    $data['selectZhiwei'] = $selectZhiwei;
    $this->pageTitle =  '招聘信息列表 - ' . zmf::config('sitename');
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
