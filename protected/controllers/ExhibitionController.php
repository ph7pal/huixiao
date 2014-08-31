<?php

class ExhibitionController extends T {

  public $layout = 'zhanhui';

  public function actionIndex() {
    $uid=zmf::filterInput($_GET['id']);
    if(!$uid){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $userCredit = UserCredit::findOne($uid);
    if(!$userCredit || $userCredit['classify']!='exhibition'){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $configs = UserCredit::model()->findAllByAttributes(array('classify' => 'exhibition', 'uid' => $uid));
    $userCredit = CHtml::listData($configs, 'name', 'value');
    $data=array(
        'creditInfo'=>$userCredit,
        'uid'=>$uid
    );
    $this->render('index',$data);
  }

}
