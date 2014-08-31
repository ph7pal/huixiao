<?php

class QiyeController extends T {

  public $layout = 'qiye';

  public function actionIndex() {
    $uid=zmf::filterInput($_GET['id']);
    if(!$uid){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $userCredit = UserCredit::findOne($uid);
    if(!$userCredit || $userCredit['classify']!='producer'){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $configs = UserCredit::model()->findAllByAttributes(array('classify' => 'producer', 'uid' => $uid));
    $userCredit = CHtml::listData($configs, 'name', 'value');
    $data=array(
        'creditInfo'=>$userCredit,
        'uid'=>$uid
    );
    $this->render('index',$data);
  }

}
