<?php
$users=Users::getTeam();
if(!empty($users)){
    foreach($users as $uid){
        echo '<div class="col-xs-2 col-sm-2">'.zmf::avatar($uid,'small').CHtml::link(Users::getUserInfo($uid,'truename'),array('mobile/index','uid'=>$uid),array('target'=>'_blank')).zmf::creditIcon($uid).'</div>';
    }
}