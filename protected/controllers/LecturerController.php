<?php

class LecturerController extends T {

  public $layout = 'jiangshi';

  public function actionIndex() {
    $uid=zmf::filterInput($_GET['id']);
    if(!$uid){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $userCredit = UserCredit::findOne($uid);
    if(!$userCredit || $userCredit['classify']!='lecturer'){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    
    $configs = UserCredit::model()->findAllByAttributes(array('classify' => 'lecturer', 'uid' => $uid));
    $userCredit = CHtml::listData($configs, 'name', 'value');
    $userCredit['truename']=Users::getUserInfo($uid,'truename');
    $data=array(
        'creditInfo'=>$userCredit,
        'uid'=>$uid
    );
    $this->render('index',$data);
  }

}
