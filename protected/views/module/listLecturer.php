<?php
$users=Users::getLecturer($areaid);
if(!empty($users)){
    foreach($users as $uid){
        echo '<div class="col-xs-2 col-sm-2">'.zmf::avatar($uid['uid'],'small').CHtml::link(Users::getUserInfo($uid['uid'],'truename'),array('mobile/index','uid'=>$uid['uid']),array('target'=>'_blank')).zmf::creditIcon($uid['uid']).'</div>';
    }
}