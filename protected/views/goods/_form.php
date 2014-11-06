<div class="form mod">
<h3><?php echo $this->listTableTitle;?></h3>
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
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>200,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>
    <div class="form-group">
      <?php echo $form->labelEx($model,'colid'); ?>
      <div class="clearfix"></div>
      <?php echo CHtml::checkBoxList('tagids',array(),  Tags::allTags(),array('separator'=>''));?>
      <p class="help-block">最多5个分类</p>
      <?php echo $form->error($model,'colid'); ?>
      <div class="clearfix"></div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'piwen'); ?>
		<?php echo $form->textField($model,'piwen',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'piwen'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'gongxiao'); ?>
		<?php echo $form->textArea($model,'gongxiao',array('size'=>60,'maxlength'=>255,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'gongxiao'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'desc'); ?>
        <?php $this->renderPartial('//common/editor',array('model'=>$model,'content'=>$model->desc,'keyid'=>$model->id,'type'=>'posts','simple'=>'yes','attribute'=>'desc'));?> 
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
    <?php echo $form->labelEx($model,'faceimg'); ?>
    <div id="<?php echo CHtml::activeId($model,"faceimg");?>_upload"></div>
    <div id="singleFileQueue" style="clear:both;"></div>
    <div class="clearfix"></div>
    <div id="fileSuccess"></div>
    <div class="clearfix"></div>
    <?php echo $form->hiddenField($model,'faceimg',array('class'=>'form-control')); ?> <input type="hidden" id="file_upload_input"/>
    <p class="help-block">最多上传<?php $upnum=10;echo $upnum;?>张</p>
    <p class="help-block"><?php echo $form->error($model,'faceimg'); ?></p>
    </div>

	

    <div class="form-group">
		<?php echo CHtml::submitButton($model->isNewRecord ? '新增' : '保存',array('class'=>'btn btn-success')); ?>
	</div>

<?php $this->endWidget(); ?>
</div><!-- form -->
<script>
var imgUploadUrl="<?php echo Yii::app()->createUrl('attachments/upload',array('id'=>$info['id'],'type'=>'goods'));?>"; $(document).ready(function(){
singleUploadify('<?php echo CHtml::activeId($model,"faceimg");?>_upload','<?php echo CHtml::activeId($model,"faceimg");?>',<?php echo $upnum;?>);
});  
</script>