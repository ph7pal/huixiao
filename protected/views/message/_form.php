<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'message-form',
    'action'=>$this->createUrl('ajax/message'),
	'enableAjaxValidation'=>true,
    'enableClientValidation'=>true
)); ?>
	<?php echo $form->errorSummary($model); ?>
    <?php echo $form->hiddenField($model,'belongid'); ?>
  <?php echo $form->hiddenField($model,'classify',array('size'=>16,'maxlength'=>16)); ?>
  
  <table width="98%" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="80" align="right">客户姓名：</td>
        <td align="left">
            <?php echo $form->textField($model,'nickname',array('size'=>60,'maxlength'=>255)); ?><span style="color: Red">*</span><?php echo $form->error($model,'nickname'); ?>
            </td>
    </tr>
    <tr>
        <td width="80" align="right">联系电话：</td>
        <td width="47%" align="left">
            <?php echo $form->textField($model,'number',array('size'=>60,'maxlength'=>255)); ?><span style="color: Red">*</span><?php echo $form->error($model,'number'); ?>
        </td>
    </tr>    
    <tr>
        <td align="right">代理区域：</td>
        <td valign="middle" align="left" height="29" class="style1">
            <?php $this->renderPartial('//common/excity',array('info'=>$model->localarea));?><span style="color: Red">*</span><?php echo $form->error($model,'localarea'); ?>
        </td>
    </tr>
    <tr>
        <td width="11%" align="right">详细内容：</td>
        <td colspan="4" align="left">
            <?php echo $form->textArea($model,'content',array('class'=>'textMessBg','placeholder'=>'我对该产品有兴趣，想代理!')); ?>
            <?php echo $form->error($model,'content'); ?>
        </td>
    </tr>
    <tr>
      <td width="11%" height="32">&nbsp;</td>
      <td align="left"><?php echo CHtml::ajaxSubmitButton(' ',$this->createUrl('ajax/message'),
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
        ),array('class'=>'tjbutton')); ?>
        <style>
          .tjbutton{
            width:118px;
            height:35px !important;
            background: url(<?php echo Yii::app()->theme->baseUrl;?>/images/tjly.gif)
          }
        </style>
        </td>
    </tr>
</table>
<?php $this->endWidget(); ?>