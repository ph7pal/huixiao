<?php
/* @var $this MagazineController */
/* @var $model Magazine */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'magazine-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>


	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'uid'); ?>
		<?php echo $form->textField($model,'uid',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'uid'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'faceimg'); ?>
		<?php echo $form->textField($model,'faceimg',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'faceimg'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'localarea'); ?>
		<?php echo $form->textField($model,'localarea',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'localarea'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'companyname'); ?>
		<?php echo $form->textField($model,'companyname',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'companyname'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'companyowner'); ?>
		<?php echo $form->textField($model,'companyowner',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'companyowner'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'officurl'); ?>
		<?php echo $form->textField($model,'officurl',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'officurl'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'contactname'); ?>
		<?php echo $form->textField($model,'contactname',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'contactname'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'contactmobile'); ?>
		<?php echo $form->textField($model,'contactmobile',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'contactmobile'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'mainproduct'); ?>
		<?php echo $form->textField($model,'mainproduct',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'mainproduct'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'magazinename'); ?>
		<?php echo $form->textField($model,'magazinename',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'magazinename'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'licensenumber'); ?>
		<?php echo $form->textField($model,'licensenumber',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'licensenumber'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'cTime'); ?>
		<?php echo $form->textField($model,'cTime',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'cTime'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'hits'); ?>
		<?php echo $form->textField($model,'hits',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'hits'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'top'); ?>
		<?php echo $form->textField($model,'top',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'top'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>

	<div class="form-group">
		<?php echo CHtml::submitButton($model->isNewRecord ? '新增' : '保存',array('class'=>'btn btn-primary')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->