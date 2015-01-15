<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/ajaxfileupload.js", CClientScript::POS_END);?>
<div class="input-group">
    <input type="file" id="noModelUpload_holder" class="form-control"/>
    <span class="input-group-btn">
        <button class="btn btn-default" onclick="ajaxFileUpload()" type="button">点击上传</button>
    </span>
</div><!-- /input-group -->
<div id="noModelUpload_upload"></div>
<script type="text/javascript">
function ajaxFileUpload(){
        $.ajaxFileUpload({
                url:'<?php echo Yii::app()->createUrl('attachments/upload',array('id'=>$keyid,'type'=>$type,'classify'=>$classify,'fileholder'=>'noModelUpload_holder','imgsize'=>124));?>',
                fileElementId:'noModelUpload_holder',
                type:'post',
                dataType: 'json',
                success: function (res){
                    if(res['status']==1){
                      var img="<p><img src='"+res['imgsrc']+"' data='"+res['attachid']+"'/></p><br/>";
                      $('#noModelUpload_upload').append(img);
                    }else{
                      alert(res['msg']);
                    }
                }
        })
}
</script>   