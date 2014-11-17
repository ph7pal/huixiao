<?php

class LecturerController extends T {

  //public $layout = 'jiangshi';
  
  public function actionIndex() {
    $order=zmf::filterInput($_GET['order'],'t',1);
    $localarea=zmf::filterInput($_GET['localarea']);
    $belongid=zmf::filterInput($_GET['belongid']);
    $medal=zmf::filterInput($_GET['medal'],'t',1);
    if(!$order || !in_array($order,array('new','top','more'))){
      $order='new';
    }
    if($order=='new'){
      $_order='cTime';
    }elseif($order=='top'){
      $_order='hits';
    }elseif($order=='more'){
      $_order='hits';
    }
    $_where='';
    if(is_numeric($localarea) && $localarea>0){
      $localids=  Area::getChildren($localarea);
      $localStr=join(',',$localids);
      $_where.=' AND localarea IN('.$localStr.')';
    }
    if($medal){
      $_where.=" AND medal='".$medal."'";
    }    
    if($belongid){
      $_where.=" AND belongCompany='".$belongid."'";
    }    
    $sql = "SELECT * FROM {{lecturer}} WHERE status=".Posts::STATUS_PASSED." {$_where} ORDER BY ".$_order;
    Posts::getAll(array('sql' => $sql), $pages, $lists);
    $_sql = "SELECT * FROM {{lecturer}} WHERE status=".Posts::STATUS_PASSED." ORDER BY hits DESC LIMIT 10";
    $tops = Yii::app()->db->createCommand($_sql)->queryAll();
    if(!empty($lists)){
      foreach($lists as $key=>$list){
        $list['truename']=Users::getUserInfo($list['uid'],'truename');
        $lists[$key]=$list;
      }
    }
    if(!empty($tops)){
      foreach($tops as $key=>$top){
        $top['truename']=Users::getUserInfo($top['uid'],'truename');
        $tops[$key]=$top;
      }
    }
    $areas=Area::listArea();
    $medals=Medal::getAll('lecturer');
    $data['posts'] = $lists;
    $data['pages'] = $pages;
    $data['tops'] = $tops;
    $data['areas'] = $areas;
    $data['localarea'] = $localarea;
    $data['medals'] = $medals;
    $data['medalid'] = $medal;
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
