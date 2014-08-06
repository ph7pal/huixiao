<h3>上传头像</h3>
<?php echo CHtml::hiddenField('type',$type);?>
<p>
    <div id="logo_upload"></div>
    <div id="singleFileQueue" style="clear:both;"></div>
    <div id="fileSuccess" style="clear:both;">
    <?php if($c['logo']!=''){    
        $attachinfo=  Attachments::getOne($c['logo']);
        if($attachinfo){
            echo '<div id="uploadAttach'.$c['logo'].'"><img src="'.zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],124,$attachinfo['classify']).'"/>'
                    .CHtml::link('删除','javascript:;',array('onclick'=>"delUploadImg('{$c['logo']}','logo')",'confirm'=>'不可恢复，确认删除？'))
                    . '</div>';
        }
    }
    ?>  
    </div>	
    <input class="form-control" type="hidden" name="logo" id="logo" value="<?php echo $c['logo'];?>"/>
</p>
<p class="help-block">上传完成后请保存</p>
<script>
    var imgUploadUrl="<?php echo Yii::app()->createUrl('attachments/upload',array('type'=>'logo','id'=>$this->uid));?>";  	
    $(document).ready(
    function(){    	
    	singleUploadify('logo_upload','logo',1);
    });  
</script>