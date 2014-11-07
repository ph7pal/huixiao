<?php
/* @var $this ZhanhuiController */
/* @var $model Zhanhui */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'zhanhui-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'zhuti'); ?>
		<?php echo $form->textField($model,'zhuti',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'zhuti'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'liangdian'); ?>
		<?php echo $form->textField($model,'liangdian',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'liangdian'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'localarea'); ?>
		<?php echo $form->textField($model,'localarea',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'localarea'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'didian'); ?>
		<?php echo $form->textField($model,'didian',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'didian'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'start_time'); ?>
		<?php echo $form->textField($model,'start_time',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'start_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'expired_time'); ?>
		<?php echo $form->textField($model,'expired_time',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'expired_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'attachid'); ?>
		<?php echo $form->textField($model,'attachid',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'attachid'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textField($model,'description',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'content'); ?>
		<?php echo $form->textArea($model,'content',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'content'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hits'); ?>
		<?php echo $form->textField($model,'hits',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'hits'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'order'); ?>
		<?php echo $form->textField($model,'order',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'order'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status'); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'cTime'); ?>
		<?php echo $form->textField($model,'cTime',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'cTime'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'uid'); ?>
		<?php echo $form->textField($model,'uid'); ?>
		<?php echo $form->error($model,'uid'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'canyu'); ?>
		<?php echo $form->textField($model,'canyu'); ?>
		<?php echo $form->error($model,'canyu'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->