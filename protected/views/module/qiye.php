<?php
$listNum=isset($listNum)?$listNum:$colinfo['listnum'];
if($this->inMobile){
    $list_colnum=12;
}else{
  $colnum=isset($colnum)?$colnum:3;
  $list_colnum=12/$colnum;  
}
$users=Users::getExhibition('producer');
if(!empty($users)){
    foreach($users as $uid){
        echo '<div class="'.$list_colnum.' col-xs-'.$list_colnum.'">'.zmf::avatar($uid['uid'],'small').CHtml::link(Users::getUserInfo($uid['uid'],'truename'),array('mobile/index','uid'=>$uid['uid']),array('target'=>'_blank')).zmf::creditIcon($uid['uid']).'</div>';
    }
}