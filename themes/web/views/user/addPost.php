<div class="form mod">
<h3><?php echo $this->listTableTitle;?></h3>
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'posts-addPost-form',
	'enableAjaxValidation'=>true,
)); ?>
    <?php echo $form->errorSummary($model); ?>
     <div class="form-group">
    <?php echo $form->labelEx($model,'colid'); ?>
    <?php echo $form->hiddenField($model,'colid',array('class'=>'form-control')); ?>    
    <?php echo Chtml::textField('',$colinfo['title'],array('disabled'=>'disabled','class'=>'form-control')); ?> 
     <p class="help-block"><?php echo $form->error($model,'colid'); ?></p>
    </div>
<?php $fieldsArr=array();if($colinfo['post_fields']!=''){$arr=explode(',',$colinfo['post_fields']);$fieldsArr=array_filter($arr);}?>
     <div class="form-group">
    <?php echo $form->labelEx($model,'title'); ?>
    <?php echo $form->textField($model,'title',array('class'=>'form-control')); ?>
     <p class="help-block"><?php echo $form->error($model,'title'); ?></p>
    </div>
    <div class="form-group">
    <?php echo $form->labelEx($model,'intro'); ?>
    <?php echo $form->textArea($model,'intro',array('class'=>'form-control','rows'=>3)); ?>
     <p class="help-block"><?php echo $form->error($model,'intro'); ?></p>
    </div>    
    <div class="form-group">
    <?php echo $form->labelEx($model,'attachid'); ?>
    <?php $this->renderPartial('//common/_singleUpload',array('id'=>$model->attachid,'type'=>'coverimg','model'=>$model,'fieldName'=>'attachid'));?>
    <?php echo $form->hiddenField($model,'attachid',array('class'=>'form-control')); ?> <input type="hidden" id="file_upload_input"/>      
    <p class="help-block"><?php echo $form->error($model,'attachid'); ?></p>
    </div>     
    <div class="form-group">
    <?php echo $form->labelEx($model,'copy_url'); ?>
    <?php echo $form->textField($model,'copy_url',array('class'=>'form-control')); ?>
     <p class="help-block">若是产品介绍，可填其他可证明真伪的链接地址。</p> 
     <p class="help-block"><?php echo $form->error($model,'copy_url'); ?></p>
    </div>
    <div class="form-group">
    <?php echo $form->labelEx($model,'reply_allow'); ?>
    <?php echo $form->dropDownList($model,'reply_allow',tools::allowOrNot(),array('class'=>'form-control','options' => array($model['reply_allow']=>array('selected'=>true)))); ?>
     <p class="help-block"><?php echo $form->error($model,'reply_allow'); ?></p>
    </div>
    <?php if(in_array('start_time',$fieldsArr)){?>
    <div class="form-group">
    <?php echo $form->labelEx($model,'start_time'); ?>
    <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array('model'=>$model,'attribute'=>'start_time','language'=>'zh-cn','value'=>date('Y/m/d',$model['start_time']),'options'=>array('showAnim'=>'fadeIn'),'htmlOptions'=>array('readonly'=>'readonly','class'=>'form-control','value'=>($model['start_time'])? date('Y/m/d',$model['start_time']) : ''),));?>  
     <p class="help-block"><?php echo $form->error($model,'start_time'); ?></p>
    </div>
    <?php }?>
    <?php if(in_array('expired_time',$fieldsArr)){?>
    <div class="form-group">
    <?php echo $form->labelEx($model,'expired_time'); ?>
    <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array('model'=>$model,'attribute'=>'expired_time','language'=>'zh-cn','value'=>date('Y/m/d',$model['expired_time']),'options'=>array('showAnim'=>'fadeIn'),'htmlOptions'=>array('readonly'=>'readonly','class'=>'form-control','value'=>($model['expired_time'])? date('Y/m/d',$model['expired_time']) : ''),));?>
     <p class="help-block"><?php echo $form->error($model,'expired_time'); ?></p>
    </div>
    <?php }?>
    <div class="form-group">
    <?php echo $form->labelEx($model,'content'); ?>
    <?php $this->renderPartial('//common/editor',array('model'=>$model,'content'=>$model['content'],'keyid'=>$model['id'],'type'=>'posts','simple'=>'yes'));?> 
     <p class="help-block"><?php echo $form->error($model,'content'); ?></p>
    </div>
    <?php if(in_array('tags',$fieldsArr)){
      $tagsArr=Tags::getPostTags($model['id'],'posts');if(empty($tagsArr)){$tagsArr=array();}$postTags=array_keys(CHtml::listData($tagsArr,'id',''));?>
    <div class="form-group">
      <label>标签选择</label>
      <div class="clearfix"></div>
      <?php echo CHtml::checkBoxList('tagids',$postTags,  Tags::allTags());?>
    </div>
    <?php }?>
    <?php echo CHtml::submitButton('提交',array('class'=>'btn btn-success','id'=>'user-addPost')); ?>
<?php $this->endWidget(); ?>
</div><!-- form -->  