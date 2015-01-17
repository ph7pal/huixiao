<?php $form=$this->beginWidget('CActiveForm',array('id'=>'xform','htmlOptions'=>array('name'=>'xform'))); ?>
<?php 
$typeinfo=tools::userCredits($type);
if($blocked){
    $disabled='disabled';
}else{
    $disabled='';
}
$_imgSize=isset($imgSize)?$imgSize:124;
if($_imgSize>200){
    $col=12;
}else{
    $col=2;
}
?>
<input class="form-control" name="type" id="type" type="hidden" value="<?php echo $type;?>"/>
<p><label>认证类型：</label><input class="form-control" value="<?php echo $typeinfo['title']; ?>" disabled/></p>
<p><label>所在地域<span class="required">*</span>：</label>
    <input class="form-control" name="localarea" id="localarea" type="hidden" value="<?php echo $info['localarea']; ?>" <?php echo $disabled;?>/>    
    <?php $this->renderPartial('//common/excity',array('info'=>$info['localarea'],'blocked'=>$blocked));?>
</p>
<p><label>联系人姓名<span class="required">*</span>：</label><input class="form-control bitian" name="contactname" id="contactname" type="text" value="<?php echo $info['contactname']; ?>"/></p>
<p><label>联系人手机<span class="required">*</span>：</label><input class="form-control bitian" name="contactmobile" id="contactmobile" type="text" value="<?php echo $info['contactmobile']; ?>"/></p>
<p><label>有效邮箱<span class="required">*</span>：</label><input class="form-control bitian" name="useremail" id="useremail" type="text" value="<?php echo $info['useremail']; ?>"/></p>
<p><label>身份证号<span class="required">*</span>：</label><input class="form-control bitian" name="idcard" id="idcard" type="text" value="<?php echo $info['idcard']; ?>"/></p>
<div class="form-group">
    <label>附件上传：</label><br/>
    <ol>
        <li>身份证正反面</li>
    </ol>
    <?php $this->renderPartial('//credit/_upload',array('uid'=>$uid,'type'=>$type,'col'=>$col,'blocked'=>$blocked,'_imgSize'=>$_imgSize));?>
<p class="help-block"></p>
<div class="clearfix"></div>
</div>
<?php 
if(!$blocked){
  echo CHtml::submitButton('提交',array('class'=>'btn btn-success','name'=>'btn','onclick'=>'return checkBitian();'));    
}elseif($fromAdmin!='yes'){
  $this->renderPartial('//credit/reset'); 
} 
$form=$this->endWidget(); 
if($fromAdmin=='yes'){
   $this->renderPartial('//credit/actions',array('uid'=>$uid,'type'=>$type,'reason'=>$reason,'status'=>$status,'groupid'=>$groupid,'creditlogo'=>$creditlogo)); 
}
?>