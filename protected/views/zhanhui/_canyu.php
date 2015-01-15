<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'zhanhui-relation-add-form',
	'enableAjaxValidation'=>false,
)); ?>
<p><?php echo $form->errorSummary($model); ?></p>
<p><span class="sp_01"><em class="red">*</em> 姓名：</span><span class="sp_02"><?php echo $form->textField($model,'username',array('class'=>'ipt')); ?></span><span class="sp_03">请填写您的真实姓名</span></p>
<p><span class="sp_01"><em class="red">*</em> 手机号码：</span><span class="sp_02"><?php echo $form->textField($model,'phone',array('class'=>'ipt')); ?></span><span class="sp_03">为方便通知您</span></p>
<p><span class="sp_01"><em class="red">*</em> 邮箱：</span><span class="sp_02"><?php echo $form->textField($model,'email',array('class'=>'ipt')); ?></span><span class="sp_03">为方便通知您</span></p>
<p><span class="sp_01">你的身份：</span><span class="sp_02"><label for="cj" style=" font-size:14px; cursor:pointer; line-height:30px;">生产厂家</label> <input type="radio" name="<?php echo CHtml::activeName($model,'type');?>" id="cj" checked="checked" style="vertical-align:middle;" value="生产厂家"><label for="jxs" style=" font-size:14px; cursor:pointer;line-height:30px; margin-left:20px;">经销商</label> <input type="radio" name="<?php echo CHtml::activeName($model,'type');?>" id="jxs" style="vertical-align:middle;" value="经销商"></span></p>
<p><span class="sp_01">参会人数：</span><span class="sp_02"><?php echo $form->textField($model,'people',array('class'=>'ipt')); ?></span></p>
<p><?php echo CHtml::submitButton('提交报名',array('class'=>'btn')); ?></p>
<?php $this->endWidget(); ?>