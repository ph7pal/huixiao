<?php $form=$this->beginWidget('CActiveForm',array('id'=>'xform','htmlOptions'=>array('name'=>'xform'))); ?>
<div class="form-group">
    <?php echo $form->labelEx($model,'order'); ?>
    <?php echo $form->textField($model,'order',array('size'=>11,'maxlength'=>11,'class'=>'form-control')); ?>
    <?php echo $form->error($model,'order'); ?>
</div>
<?php echo CHtml::submitButton('排序',array('class'=>'btn btn-default','name'=>'')); ?>
<?php $form=$this->endWidget(); ?>
