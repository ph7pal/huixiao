<?php $form=$this->beginWidget('CActiveForm',array('id'=>'xform','htmlOptions'=>array('name'=>'xform'))); ?>
<?php 
$typeinfo=tools::userCredits($type);
if($blocked){
    $disabled='disabled';
}else{
    $disabled='';
}
?>
<input class="form-control" name="type" id="type" type="hidden" value="<?php echo $type;?>"/>
<p><label>认证类型：</label><input class="form-control" value="<?php echo $typeinfo['title']; ?>" disabled/></p>    
<p><label>企业全称：</label><input class="form-control" name="companyname" id="companyname" type="text" value="<?php echo $info['companyname']; ?>" <?php echo $disabled;?>/></p>
<p><label>官方网站地址：</label><input class="form-control" name="companyurl" id="companyurl" type="text" value="<?php echo $info['companyurl']; ?>" <?php echo $disabled;?>/></p>
<p><label>联系人姓名：</label><input class="form-control" name="contactname" id="contactname" type="text" value="<?php echo $info['contactname']; ?>" <?php echo $disabled;?>/></p>
<p><label>联系人手机：</label><input class="form-control" name="contactmobile" id="contactmobile" type="text" value="<?php echo $info['contactmobile']; ?>" <?php echo $disabled;?>/></p>
<p><label>营业执照注册号：</label><input class="form-control" name="licensenumber" id="licensenumber" type="text" value="<?php echo $info['licensenumber']; ?>" <?php echo $disabled;?>/></p>
<div class="form-group">
    <label>附件上传：</label><br/>
    <ol>
        <li>营业执照</li>
        <li>企业公函</li>
    </ol>
    <?php 
    if(!$blocked){
        $this->renderPartial('//common/noModelUpload',array('keyid'=>$this->uid,'type'=>'credit','classify'=>$type));
    }else{
        $imgs=  Attachments::getCreditImgs($this->uid,$type);
        if(!empty($imgs)){
            foreach($imgs as $attachinfo){
                $_img="<img src='".zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],124,$attachinfo['classify'])."' class=''/>";
                $big=zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],'origin',$attachinfo['classify']);
                echo CHtml::link($_img,$big,array('target'=>'_blank'));
            }
        }
    }
    ?>
<p class="help-block"></p>
</div>
<?php 
if(!$blocked){
    echo CHtml::submitButton('提交',array('class'=>'btn btn-default','name'=>'btn'));    
}
?>
<?php $form=$this->endWidget(); ?>