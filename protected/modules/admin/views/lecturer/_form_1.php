<?php
/* @var $this LecturerController */
/* @var $model Lecturer */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'lecturer-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'uid'); ?>
		<?php echo $form->textField($model,'uid'); ?>
		<?php echo $form->error($model,'uid'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'faceimg'); ?>
		<?php echo $form->textField($model,'faceimg'); ?>
		<?php echo $form->error($model,'faceimg'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'localarea'); ?>
		<?php echo $form->textField($model,'localarea'); ?>
		<?php echo $form->error($model,'localarea'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'companyname'); ?>
		<?php echo $form->textField($model,'companyname',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'companyname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'companyowner'); ?>
		<?php echo $form->textField($model,'companyowner',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'companyowner'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'belongCompany'); ?>
		<?php echo $form->textField($model,'belongCompany',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'belongCompany'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'belongTeam'); ?>
		<?php echo $form->textField($model,'belongTeam',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'belongTeam'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'jobname'); ?>
		<?php echo $form->textField($model,'jobname',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'jobname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'contactmobile'); ?>
		<?php echo $form->textField($model,'contactmobile',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'contactmobile'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'idcard'); ?>
		<?php echo $form->textField($model,'idcard',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'idcard'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'cTime'); ?>
		<?php echo $form->textField($model,'cTime'); ?>
		<?php echo $form->error($model,'cTime'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hits'); ?>
		<?php echo $form->textField($model,'hits'); ?>
		<?php echo $form->error($model,'hits'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'top'); ?>
		<?php echo $form->textField($model,'top'); ?>
		<?php echo $form->error($model,'top'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status'); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'medal'); ?>
		<?php echo $form->textField($model,'medal'); ?>
		<?php echo $form->error($model,'medal'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'medal_logo'); ?>
		<?php echo $form->textField($model,'medal_logo',array('size'=>16,'maxlength'=>16)); ?>
		<?php echo $form->error($model,'medal_logo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'medal_title'); ?>
		<?php echo $form->textField($model,'medal_title',array('size'=>16,'maxlength'=>16)); ?>
		<?php echo $form->error($model,'medal_title'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->