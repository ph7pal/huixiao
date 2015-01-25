<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'message-form',
    'action'=>$this->createUrl('ajax/message'),
	'enableAjaxValidation'=>true,
    'enableClientValidation'=>true
)); ?>
	<?php echo $form->errorSummary($model); ?>
    <?php echo $form->hiddenField($model,'belongid'); ?>
  <?php echo $form->hiddenField($model,'classify',array('size'=>16,'maxlength'=>16)); ?>
    <div class="blank10"></div>
    <span class="tit">客户姓名：</span>
    <?php echo $form->textField($model,'nickname',array('size'=>60,'maxlength'=>255,'class'=>'name')); ?>
    <span class="tit">联系电话：</span>
    <?php echo $form->textField($model,'number',array('size'=>60,'maxlength'=>255,'class'=>'phone')); ?>
    <span class="tit">代理区域：</span>
    <?php $this->renderPartial('//common/excity',array('info'=>$model->localarea));?><br/>
    <span class="tit">想代理的产品要求：</span>
    <?php echo $form->textArea($model,'content',array('class'=>'pro_info','style'=>'margin-left:20px;width:298px')); ?>
    <?php echo CHtml::ajaxSubmitButton('发布',$this->createUrl('ajax/message'),
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
        ),array('class'=>'sub_btn')); ?>
    <input type="button" class="res_btn" value="取消" onclick="quxiao()" />
<?php $this->endWidget(); ?>