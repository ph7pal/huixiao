<?php
$users=Users::getLecturer($areaid,$uid);
if(!empty($users)){
    foreach($users as $uid){
        echo '<div class="col-xs-2 col-sm-2">'.CHtml::link(zmf::avatar($uid['uid'],'small').Users::getUserInfo($uid['uid'],'truename'),array('lecturer/index','id'=>$uid['uid']),array('target'=>'_blank')).zmf::creditIcon($uid['uid']).'</div>';
    }
}