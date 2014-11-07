<div class="form mod">
<h3><?php echo $this->listTableTitle;?></h3>
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'zhanhui-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>
	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>
    <div class="form-group">
		<?php //echo $form->labelEx($model,'attachid'); ?>
		<?php //$this->renderPartial('//common/singleUpload',array('keyid'=>$info['id'],'attachid'=>$info['attachid'],'type'=>'zhanhui','model'=>$model,'fieldName'=>'attachid'));?>
		<?php //echo $form->error($model,'attachid'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'zhuti'); ?>
		<?php echo $form->textArea($model,'zhuti',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'zhuti'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'liangdian'); ?>
		<?php echo $form->textArea($model,'liangdian',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'liangdian'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'localarea'); ?>
		<?php //echo $form->textField($model,'localarea',array('size'=>10,'maxlength'=>10,'class'=>'form-control')); ?><?php $this->renderPartial('//common/excity',array('info'=>$model->localarea));?>
		<?php echo $form->error($model,'localarea'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'didian'); ?>
		<?php echo $form->textField($model,'didian',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'didian'); ?>
	</div>

	<div class="form-group">
      <?php echo $form->labelEx($model,'start_time'); ?>		
      <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array('model'=>$model,'attribute'=>'start_time','language'=>'zh-cn','options'=>array('showAnim'=>'fadeIn',),'htmlOptions'=>array('class'=>'form-control')));?>
		<?php echo $form->error($model,'start_time'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'expired_time'); ?>
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker', array('model'=>$model,'attribute'=>'expired_time','language'=>'zh-cn','options'=>array('showAnim'=>'fadeIn',),'htmlOptions'=>array('class'=>'form-control')));?>
		<?php echo $form->error($model,'expired_time'); ?>
	</div>	

	<div class="form-group">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textArea($model,'description',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'content'); ?>
        <?php $this->renderPartial('//common/editor',array('model'=>$model,'content'=>$info['content'],'keyid'=>$info['id'],'type'=>'zhanhui','simple'=>'yes'));?> 
		<?php echo $form->error($model,'content'); ?>
	</div>


	<div class="form-group">
		<?php echo CHtml::submitButton($model->isNewRecord ? '新增' : '保存',array('class'=>'btn btn-success')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->