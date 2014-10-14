<?php

class LecturerController extends T {

  //public $layout = 'jiangshi';
  
  public function actionIndex() {
    $_sql = "SELECT * FROM {{lecturer}}";
    Posts::getAll(array('sql' => $_sql), $pages, $lists);
    if(!empty($lists)){
      foreach($lists as $key=>$list){
        $list['truename']=Users::getUserInfo($list['uid'],'truename');
        $lists[$key]=$list;
      }
    }
    $data['posts'] = $lists;
    $data['pages'] = $pages;
    $this->render('index', $data);
  }
  

  public function actionView() {
    $keyid=zmf::filterInput($_GET['id']);
    $colid=zmf::filterInput($_GET['colid']);
    if(!$keyid){
      $this->message(0, '您要查看的页面不存在，请核实');
    }
    $info=Producer::model()->findByPk($keyid);
    if(!$info){
    	$this->message(0, '您要查看的页面不存在，请核实');
    }
    $uid=$info['uid'];    
//    $userCredit = UserCredit::findOne($uid);
//    if(!$userCredit || $userCredit['classify']!='lecturer'){
//      $this->message(0, '您要查看的页面不存在，请核实');
//    }
    $truename=Users::getUserInfo($uid,'truename');
    $areainfo = Area::getOne($info['localarea'],'name');
    if($areainfo){
        $localname = $areainfo;
    }else{
        $localname = '';
    }
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
        'info'=>$info,
        'truename'=>$truename,
        'localname'=>$localname,
        //'creditInfo'=>$userCredit,
        'uid'=>$uid,
        'columns'=>$columns,
        'selected'=>$selected,
        'colid'=>$colid
    );
    $this->render('view',$data);
  }

}
