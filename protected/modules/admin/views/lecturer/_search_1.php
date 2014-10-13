<?php
/* @var $this LecturerController */
/* @var $model Lecturer */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id',array('size'=>11,'maxlength'=>11)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'uid'); ?>
		<?php echo $form->textField($model,'uid'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'faceimg'); ?>
		<?php echo $form->textField($model,'faceimg'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'localarea'); ?>
		<?php echo $form->textField($model,'localarea'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'companyname'); ?>
		<?php echo $form->textField($model,'companyname',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'companyowner'); ?>
		<?php echo $form->textField($model,'companyowner',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'belongCompany'); ?>
		<?php echo $form->textField($model,'belongCompany',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'belongTeam'); ?>
		<?php echo $form->textField($model,'belongTeam',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'jobname'); ?>
		<?php echo $form->textField($model,'jobname',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'contactmobile'); ?>
		<?php echo $form->textField($model,'contactmobile',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idcard'); ?>
		<?php echo $form->textField($model,'idcard',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'cTime'); ?>
		<?php echo $form->textField($model,'cTime'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'hits'); ?>
		<?php echo $form->textField($model,'hits'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'top'); ?>
		<?php echo $form->textField($model,'top'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'status'); ?>
		<?php echo $form->textField($model,'status'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'medal'); ?>
		<?php echo $form->textField($model,'medal'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'medal_logo'); ?>
		<?php echo $form->textField($model,'medal_logo',array('size'=>16,'maxlength'=>16)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'medal_title'); ?>
		<?php echo $form->textField($model,'medal_title',array('size'=>16,'maxlength'=>16)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->