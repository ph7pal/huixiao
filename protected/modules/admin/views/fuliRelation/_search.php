<?php
/* @var $this FuliRelationController */
/* @var $model FuliRelation */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'jobid'); ?>
		<?php echo $form->textField($model,'jobid'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fuliid'); ?>
		<?php echo $form->textField($model,'fuliid',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->