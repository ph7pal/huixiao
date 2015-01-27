<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/ajaxfileupload.js", CClientScript::POS_END);?>
<div class="input-group">
    <input type="file" id="noModelUpload_holder" name="noModelUpload_holder" class="form-control"/>
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
                data: {'PHPSESSID':'<?php echo Yii::app()->session->sessionID;?>', 'YII_CSRF_TOKEN': '<?php echo Yii::app()->request->csrfToken;?>'},
                dataType: 'json',                
                success: function (res){
                    if(res['status']==1){
                      <?php if($multi){?>
                      	var img="<div class='col-xs-2 col-sm-2 no-padding' id='uploadAttach"+res['attachid']+"'><p><img src='"+res['imgsrc']+"' class='img-responsive'/><input type='hidden' name='uploadAttach[]'  value='"+res['attachid']+"'/></p><p   class='text-center'><a href='javascript:;' onclick='delUploadImg("+res['attachid']+")'>删除</a></p></div>";
                      	$('#noModelUpload_upload').append(img);
                      <?php }else{?>
                      	var img="<div class='col-xs-2 col-sm-2 no-padding' id='uploadAttach"+res['attachid']+"'><p><img src='"+res['imgsrc']+"'/></p><p  class='text-center'><a href='javascript:;' onclick='delUploadImg("+res['attachid']+")'>删除</a></p></div>";
                      $('#noModelUpload_upload').html(img);
                      $('#<?php echo $fieldName;?>').val(res['attachid']);
                      <?php }?>
                    }else{
                      alert(res['msg']);
                    }
                }
        })
}
</script>   