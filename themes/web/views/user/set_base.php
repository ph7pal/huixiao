<h3>上传头像</h3>
<?php echo CHtml::hiddenField('type',$type);?>
<?php $this->renderPartial('//common/_noModelUpload',array('type'=>'logo','fieldName'=>'logo'));?>


<p>
    <div id="logo_upload"></div>
    <div id="singleFileQueue" style="clear:both;"></div>
    <div id="fileSuccess" style="clear:both;">
    <?php if($c['logo']!=''){    
        $attachinfo=  Attachments::getOne($c['logo']);
        if($attachinfo && $attachinfo['status']==Posts::STATUS_PASSED){
            echo '<div id="uploadAttach'.$c['logo'].'"><img src="'.zmf::imgurl($attachinfo['cTime'],$attachinfo['filePath'],124,$attachinfo['classify']).'"/>'
                    .CHtml::link('删除','javascript:;',array('onclick'=>"delUploadImg('{$c['logo']}','logo')",'confirm'=>'不可恢复，确认删除？'))
                    . '</div>';
        }
    }
    ?>  
    </div>	
    <input class="form-control" type="hidden" name="logo" id="logo" value="<?php echo $c['logo'];?>"/>
</p>
<p>小提示：</p>
<ol>
    <li>上传封面图后才有可能被推荐到首页</li>
    <li>选择图片并点击上传后，请再点击保存</li>
    <?php $diffTypes=  Users::diffCreditTypes();if(in_array($this->userCreditInfo['classify'],$diffTypes)){?>
    <li>请上传<font color='red'><b>140*60</b></font>比例的封面图(不是该比例的图片将被截取)</li>
    <?php }?>
</ol>
<script>

</script>