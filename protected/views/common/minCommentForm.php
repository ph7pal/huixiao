<strong>发表评论</strong>
<div class="form">
<?php 
if(!Yii::app()->user->isGuest){
$status = T::checkYesOrNo(array('uid' => Yii::app()->user->id, 'type' => 'user_addcomments'));
if($status){
$model=new Comments();
$form=$this->beginWidget('CActiveForm', array(
	'id'=>'comments-addcomment-form',
    //'action'=>$this->createUrl('posts/comment',array('id'=>$keyid,'type'=>$type)),
	'enableAjaxValidation'=>false,
    'enableClientValidation'=>false
)); ?>

<?php echo $form->hiddenField($model,'classify',array('value'=>$type)); ?>
<?php echo $form->hiddenField($model,'logid',array('value'=>$keyid)); ?>     
<?php if(Yii::app()->user->isGuest){?>
<div class=""> 
<?php echo $form->labelEx($model,'nickname'); ?>
<?php echo $form->textField($model,'nickname',array('class'=>"form-control")); ?>
<?php echo $form->error($model,'nickname'); ?>   
</div>
<div class="">
<?php echo $form->labelEx($model,'email'); ?>
<?php echo $form->textField($model,'email',array('class'=>"form-control")); ?>
<?php echo $form->error($model,'email'); ?>
</div>
<?php }?>

<div style="width: 100%; overflow: hidden;">
<?php echo $form->labelEx($model,'content'); ?>
  <div style="margin-right: 10px; *height: 1%;">
    <?php echo $form->textArea($model,'content',array('style'=>"width: 100%; padding: 3px; border: 1px solid #ccc; height: 120px;",'rows'=>5)); ?>
  </div>
<?php echo $form->error($model,'content'); ?>           
</div>

<div class="buttons">
    <p>
    <span id="loader"></span>
    <?php echo CHtml::ajaxSubmitButton('提交',$this->createUrl('ajax/comment',array('id'=>$keyid,'type'=>$type,'uid'=>Yii::app()->user->id)),
        array(
            'beforeSend'=>'function(){
            //loading("loader",0);
            }',
            'success'=>"function(data){
                data = eval('('+data+')');
                if(data['status']=='0'){
                alert(data['msg']);
                //clearDiv('loader');
                }else{
                window.location.reload();
                }
            }",
        ),array('class'=>'btn btn-primary send_menu')); ?>
    </p>
</div> 
<?php $this->endWidget(); }else{?>
    <div class="alert alert-danger">
        非常抱歉，您暂不能参与评论。
    </div>
<?php }}?>
</div>