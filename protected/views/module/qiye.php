<?php
$listNum=isset($listNum)?$listNum:$colinfo['listnum'];
if($this->inMobile){
  $colnum=isset($colnum)?$colnum:3;
  $list_colnum=12/$colnum;  
}else{
  $colnum=isset($colnum)?$colnum:3;
  $list_colnum=12/$colnum;  
}
$users=Users::getExhibition('producer');
if(!empty($users)){
    foreach($users as $uid){
        echo '<div class="'.$list_colnum.' col-xs-'.$list_colnum.'">'.CHtml::link(zmf::avatar($uid['uid'],'small').Users::getUserInfo($uid['uid'],'truename'),array('qiye/index','id'=>$uid['uid']),array('target'=>'_blank')).zmf::creditIcon($uid['uid']).'</div>';
    }
}