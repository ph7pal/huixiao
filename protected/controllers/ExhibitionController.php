<?php

class ExhibitionController extends T {

  public $layout = 'zhanhui';

  public function actionIndex() {
    $uid=zmf::filterInput($_GET['id']);
    $colid=zmf::filterInput($_GET['colid']);
    if(!$uid){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $userCredit = UserCredit::findOne($uid);
    if(!$userCredit || $userCredit['classify']!='exhibition'){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $configs = UserCredit::model()->findAllByAttributes(array('classify' => 'exhibition', 'uid' => $uid));
    $userCredit = CHtml::listData($configs, 'name', 'value');
    $columns = Columns::userColumns($uid,'*');
    $selected=array();
    if(!empty($columns)){
      if(!$colid){
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
        'columns'=>$columns,
        'selected'=>$selected,
        'colid'=>$colid
    );
    $this->render('index',$data);
  }

}
