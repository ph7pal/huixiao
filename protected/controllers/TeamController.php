<?php

class TeamController extends T {

  public $layout = 'team';

  public function actionIndex() {
    $uid=zmf::filterInput($_GET['id']);
    if(!$uid){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $userCredit = UserCredit::findOne($uid);
    if(!$userCredit || $userCredit['classify']!='marketing_team'){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $configs = UserCredit::model()->findAllByAttributes(array('classify' => 'marketing_team', 'uid' => $uid));
    $userCredit = CHtml::listData($configs, 'name', 'value');
    //$userCredit['truename']=Users::getUserInfo($uid,'truename');
    $data=array(
        'creditInfo'=>$userCredit,
        'uid'=>$uid
    );
    $this->render('index',$data);
  }

}
