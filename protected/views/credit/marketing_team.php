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
<p><label>所在地域：</label>
    <input class="form-control" name="localarea" id="localarea" type="hidden" value="<?php echo $info['localarea']; ?>" <?php echo $disabled;?>/>    
    <?php $this->renderPartial('//common/excity',array('info'=>$info['localarea'],'blocked'=>$blocked));?>
</p>
<p><label>企业全称<span class="required">*</span>：</label><input class="form-control bitian" name="companyname" id="companyname" type="text" value="<?php echo $info['companyname']; ?>" <?php echo $disabled;?>/></p>
<p><label>企业地址<span class="required">*</span>：</label><input class="form-control  bitian" name="address" id="address" type="text" value="<?php echo $info['address']; ?>" <?php echo $disabled;?>/></p>
<p><label>团队名称<span class="required">*</span>：</label><input class="form-control bitian" name="teamname" id="teamname" type="text" value="<?php echo $info['teamname']; ?>" <?php echo $disabled;?>/></p>
<p><label>负责人姓名<span class="required">*</span>：</label><input class="form-control bitian" name="companyowner" id="companyowner" type="text" value="<?php echo $info['companyowner']; ?>" <?php echo $disabled;?>/></p>
<p><label>官方网站地址<span class="required">*</span>：</label><input class="form-control bitian" name="officeurl" id="officeurl" type="text" value="<?php echo $info['officeurl']; ?>" <?php echo $disabled;?>/></p>
<p><label>联系人姓名<span class="required">*</span>：</label><input class="form-control bitian" name="contactname" id="contactname" type="text" value="<?php echo $info['contactname']; ?>" <?php echo $disabled;?>/></p>
<p><label>联系手机<span class="required">*</span>：</label><input class="form-control bitian" name="contactmobile" id="contactmobile" type="text" value="<?php echo $info['contactmobile']; ?>" <?php echo $disabled;?>/></p>
<p><label>主打产品<span class="required">*</span>：</label>
<?php echo CHtml::dropDownList('mainproduct[]',$info['mainproduct'],Tags::allTags(),array('class'=>'form-control bitian','disabled'=>$disabled,'multiple'=>'true')); ?></p>
<p class="help-block">按住CTRL可多选</p>
<p><label>营业执照注册号<span class="required">*</span>：</label><input class="form-control bitian" name="licensenumber" id="licensenumber" type="text" value="<?php echo $info['licensenumber']; ?>" <?php echo $disabled;?>/></p>

<div class="form-group">
    <label>附件上传：</label><br/>
    <ol>
        <li>营业执照(请上传营业执照最新年检副本的扫描件或照片)</li>
        <li>企业公函：请下载 《企业认证申请公函》 ，加盖企业公章（合同章、财务章等无效）后扫描或拍照上传</li>
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