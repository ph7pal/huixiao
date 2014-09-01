<?php

class QiyeController extends T {

  public $layout = 'qiye';

  public function actionIndex() {
    $uid=zmf::filterInput($_GET['id']);
    $colid=zmf::filterInput($_GET['colid']);
    $type=zmf::filterInput($_GET['type'],'t',1);
    if(!$uid){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $userCredit = UserCredit::findOne($uid);
    if(!$userCredit || $userCredit['classify']!='producer'){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $configs = UserCredit::model()->findAllByAttributes(array('classify' => 'producer', 'uid' => $uid));
    $userCredit = CHtml::listData($configs, 'name', 'value');
    $columns = Columns::userColumns($uid,'*');
    $selected=array();
    if(!empty($columns)){
      if(!$colid && !$type){
        $selected=$columns;
      }else{
        foreach($columns as $col){
          if($col['id']==$colid){
            $selected[]=$col;
            break;
          }
        }
      }
    }
    $data=array(
        'creditInfo'=>$userCredit,
        'uid'=>$uid,
        'type'=>$type,
        'columns'=>$columns,
        'selected'=>$selected,
        'colid'=>$colid
    );
    $this->render('index',$data);
  }

}
