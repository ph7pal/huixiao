<?php
/* @var $this GoodsController */
/* @var $model Goods */
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
		<?php echo $form->label($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>200)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'piwen'); ?>
		<?php echo $form->textField($model,'piwen',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'gongxiao'); ?>
		<?php echo $form->textField($model,'gongxiao',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'desc'); ?>
		<?php echo $form->textArea($model,'desc',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'desc2'); ?>
		<?php echo $form->textArea($model,'desc2',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'desc3'); ?>
		<?php echo $form->textArea($model,'desc3',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'desc4'); ?>
		<?php echo $form->textArea($model,'desc4',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'colid'); ?>
		<?php echo $form->textField($model,'colid'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'colid2'); ?>
		<?php echo $form->textField($model,'colid2'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'colid3'); ?>
		<?php echo $form->textField($model,'colid3'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'colid4'); ?>
		<?php echo $form->textField($model,'colid4'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'colid5'); ?>
		<?php echo $form->textField($model,'colid5'); ?>
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

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->