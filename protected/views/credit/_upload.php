<?php 
if(!$blocked){
    $this->renderPartial('//common/_noModelUpload',array('keyid'=>$uid,'type'=>'credit','classify'=>$type,'num'=>5,'multi'=>true));
}
$imgs=  Attachments::getCreditImgs($uid,$type);
if(!empty($imgs)){
    foreach($imgs as $attachinfo){
        $randid=  uniqid();
        $_img="<img src='".zmf::imgurl($attachinfo['cTime'],$attachinfo['filePath'],$_imgSize,$attachinfo['classify'])."' class='img-responsive'/>";
        $big=zmf::imgurl($attachinfo['cTime'],$attachinfo['filePath'],'origin',$attachinfo['classify']);
        echo '<div class="col-xs-'.$col.' col-md-'.$col.' no-padding" id="'.$randid.'">'.CHtml::link($_img,$big,array('target'=>'_blank'));
        if(!$blocked){
            echo '<p class="text-center">'.CHtml::link('删除','javascript:;',array('onclick'=>"delUploadImg('{$attachinfo['id']}','{$randid}')",'confirm'=>'不可恢复，确认删除？')).'</p>';
        }
        echo '</div>';
    }
}