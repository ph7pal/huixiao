<?php
/* @var $this JobsController */
/* @var $model Jobs */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'jobs-form',
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
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gs_title'); ?>
		<?php echo $form->textField($model,'gs_title',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gs_title'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gs_didian'); ?>
		<?php echo $form->textField($model,'gs_didian',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gs_didian'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gs_guimo'); ?>
		<?php echo $form->textField($model,'gs_guimo',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gs_guimo'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gs_xingzhi'); ?>
		<?php echo $form->textField($model,'gs_xingzhi',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gs_xingzhi'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gs_miaoshu'); ?>
		<?php echo $form->textArea($model,'gs_miaoshu',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gs_miaoshu'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gs_zhuye'); ?>
		<?php echo $form->textField($model,'gs_zhuye',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gs_zhuye'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_miaoshu'); ?>
		<?php echo $form->textArea($model,'gz_miaoshu',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_miaoshu'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_didian'); ?>
		<?php echo $form->textField($model,'gz_didian',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_didian'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_jingyan'); ?>
		<?php echo $form->textField($model,'gz_jingyan',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_jingyan'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_xingzhi'); ?>
		<?php echo $form->textField($model,'gz_xingzhi',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_xingzhi'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_zdxueli'); ?>
		<?php echo $form->textField($model,'gz_zdxueli',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_zdxueli'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_gljy'); ?>
		<?php echo $form->textField($model,'gz_gljy',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_gljy'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_xinzi'); ?>
		<?php echo $form->textField($model,'gz_xinzi',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_xinzi'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_renshu'); ?>
		<?php echo $form->textField($model,'gz_renshu',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_renshu'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_zhiwei'); ?>
		<?php echo $form->textField($model,'gz_zhiwei',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_zhiwei'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_fuli'); ?>
		<?php echo $form->textField($model,'gz_fuli',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_fuli'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_contactor'); ?>
		<?php echo $form->textField($model,'gz_contactor',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_contactor'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gz_contact'); ?>
		<?php echo $form->textField($model,'gz_contact',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gz_contact'); ?>
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