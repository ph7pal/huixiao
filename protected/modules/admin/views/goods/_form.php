<?php
/* @var $this GoodsController */
/* @var $model Goods */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'goods-form',
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
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>200,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'piwen'); ?>
		<?php echo $form->textField($model,'piwen',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'piwen'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gongxiao'); ?>
		<?php echo $form->textField($model,'gongxiao',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gongxiao'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'desc'); ?>
		<?php echo $form->textArea($model,'desc',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'desc'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'desc2'); ?>
		<?php echo $form->textArea($model,'desc2',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'desc2'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'desc3'); ?>
		<?php echo $form->textArea($model,'desc3',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'desc3'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'desc4'); ?>
		<?php echo $form->textArea($model,'desc4',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'desc4'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'colid'); ?>
		<?php echo $form->textField($model,'colid',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'colid'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'colid2'); ?>
		<?php echo $form->textField($model,'colid2',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'colid2'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'colid3'); ?>
		<?php echo $form->textField($model,'colid3',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'colid3'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'colid4'); ?>
		<?php echo $form->textField($model,'colid4',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'colid4'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'colid5'); ?>
		<?php echo $form->textField($model,'colid5',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'colid5'); ?>
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