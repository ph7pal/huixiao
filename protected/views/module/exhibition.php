<?php
$type=isset($type) ? $type : 'order';
$users=Users::getExhibition('exhibition',10,$type);
$listNum=isset($listNum)?$listNum:$colinfo['listnum'];
if($this->inMobile){
  $colnum=isset($colnum)?$colnum:3;
  $list_colnum=12/$colnum;  
}else{
  $colnum=isset($colnum)?$colnum:3;
  $list_colnum=12/$colnum;  
}
if(!empty($users)){
    foreach($users as $uid){
        echo '<div class="col-xs-'.$list_colnum.' col-sm-'.$list_colnum.'">'.CHtml::link(zmf::avatar($uid['uid'],'small').$uid['truename'],array('exhibition/index','id'=>$uid['uid']),array('target'=>'_blank')).'</div>';
    }
}