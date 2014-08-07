<?php $form=$this->beginWidget('CActiveForm',array('id'=>'xform','htmlOptions'=>array('name'=>'xform'))); ?>
<?php $typeinfo=tools::userCredits($type);?>
<input class="form-control" name="type" id="type" type="hidden" value="<?php echo $type;?>"/>
<p><label>认证类型：</label><input class="form-control" value="<?php echo $typeinfo['title']; ?>" disabled/></p>
<p><label>联系人姓名<span class="required">*</span>：</label><input class="form-control bitian" name="qq" id="qq" type="text" value="<?php echo $info['qq']; ?>"/></p>
<p><label>联系人手机<span class="required">*</span>：</label><input class="form-control bitian" name="mobile" id="mobile" type="text" value="<?php echo $info['mobile']; ?>"/></p>
<p><label>有效邮箱<span class="required">*</span>：</label><input class="form-control bitian" name="useremail" id="useremail" type="text" value="<?php echo $info['useremail']; ?>"/></p>
<p><label>身份证号<span class="required">*</span>：</label><input class="form-control bitian" name="user_id" id="user_id" type="text" value="<?php echo $info['user_id']; ?>"/></p>
<div class="form-group">
    <label>附件上传：</label><br/>
    <ol>
        <li>身份证正反面</li>
    </ol>
    <?php 
    if(!$blocked){
        $this->renderPartial('//common/noModelUpload',array('keyid'=>$uid,'type'=>'credit','classify'=>$type,'num'=>5));
    }
    $imgs=  Attachments::getCreditImgs($uid,$type);
    if(!empty($imgs)){
        foreach($imgs as $attachinfo){
            $randid=  uniqid();
            $_img="<img src='".zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],$_imgSize,$attachinfo['classify'])."' class=''/>";
            $big=zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],'origin',$attachinfo['classify']);
            echo '<div class="col-xs-'.$col.' col-md-'.$col.'" id="'.$randid.'">'.CHtml::link($_img,$big,array('target'=>'_blank'));
            if(!$blocked){
                echo '<p>'.CHtml::link('删除','javascript:;',array('onclick'=>"delUploadImg('{$attachinfo['id']}','{$randid}')",'confirm'=>'不可恢复，确认删除？')).'</p>';
            }
            echo '</div>';
        }
    }    
    ?>
<p class="help-block"></p>
<div class="clearfix"></div>
</div>
<?php echo CHtml::submitButton('提交',array('class'=>'btn btn-default','name'=>'btn','onclick'=>'return checkBitian();')); ?>
<?php $form=$this->endWidget(); ?>