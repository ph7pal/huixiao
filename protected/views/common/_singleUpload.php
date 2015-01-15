<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/ajaxfileupload.js", CClientScript::POS_END);?>
<div class="input-group">
    <input type="file" id="<?php echo CHtml::activeId($model,$fieldName);?>_holder" class="form-control"/>
    <span class="input-group-btn">
        <button class="btn btn-default" onclick="ajaxFileUpload()" type="button">点击上传</button>
    </span>
</div><!-- /input-group -->
<div id="<?php echo CHtml::activeId($model,$fieldName);?>_upload">
<?php if($attachid>0){
    $attachinfo=  Attachments::getOne($attachid);
    if($attachinfo){
        echo '<div id="uploadAttach'.$attachid.'"><img src="'.zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],124,$attachinfo['classify']).'"/>'
                .CHtml::link('删除','javascript:;',array('onclick'=>"delUploadImg({$attachid},'".CHtml::activeId($model,$fieldName)."')",'confirm'=>'不可恢复，确认删除？'))
                . '</div>';
    }
}
?>
</div>
<script type="text/javascript">
function ajaxFileUpload(){
        $.ajaxFileUpload({
                url:'<?php echo Yii::app()->createUrl('attachments/upload',array('id'=>$keyid,'type'=>$type,'fileholder'=>CHtml::activeId($model,$fieldName).'_holder','imgsize'=>124));?>',
                fileElementId:'<?php echo CHtml::activeId($model,$fieldName);?>_holder',
                type:'post',
                dataType: 'json',
                success: function (res){
                    if(res['status']==1){
                      var img="<p><img src='"+res['imgsrc']+"' data='"+res['attachid']+"'/></p><br/>";
                      $('#<?php echo CHtml::activeId($model,$fieldName);?>_upload').html(img);
                      $('#<?php echo CHtml::activeId($model,$fieldName);?>').val(res['attachid']);
                    }else{
                      alert(res['msg']);
                    }
                }
        })
}
</script>   