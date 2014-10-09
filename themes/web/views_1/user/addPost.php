<div class="form mod">
<h3><?php echo $this->listTableTitle;?></h3>
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'posts-addPost-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>true,
)); ?>
    <?php echo $form->errorSummary($model); ?>
    <?php echo $form->hiddenField($model,'id',array('value'=>$keyid)); ?>
    <?php echo Chtml::hiddenField('colid',$info['colid']); ?>
     <div class="form-group">
    <?php echo $form->labelEx($model,'colid'); ?>
    <?php echo $form->hiddenField($model,'colid',array('class'=>'form-control','value'=>$info['colid'])); ?>    
    <?php echo Chtml::textField('',$colinfo['title'],array('disabled'=>'disabled','class'=>'form-control')); ?> 
     <p class="help-block"><?php echo $form->error($model,'colid'); ?></p>
    </div>
<?php $fieldsArr=array();if($colinfo['post_fields']!=''){$arr=explode(',',$colinfo['post_fields']);$fieldsArr=array_filter($arr);}?>
     <div class="form-group">
    <?php echo $form->labelEx($model,'title'); ?>
    <?php echo $form->textField($model,'title',array('class'=>'form-control','value'=>$info['title'])); ?>
     <p class="help-block"><?php echo $form->error($model,'title'); ?></p>
    </div>
    <div class="form-group">
    <?php echo $form->labelEx($model,'intro'); ?>
    <?php echo $form->textArea($model,'intro',array('class'=>'form-control','value'=>$info['intro'],'rows'=>3)); ?>
     <p class="help-block"><?php echo $form->error($model,'intro'); ?></p>
    </div>    
    <div class="form-group">
    <?php echo $form->labelEx($model,'attachid'); ?>
    <div id="<?php echo CHtml::activeId($model,"attachid");?>_upload"></div>
    <div id="singleFileQueue" style="clear:both;"></div>
    <div id="fileSuccess" style="clear:both;"></div>    
    <?php if($info['attachid']>0){    
        $attachinfo=  Attachments::getOne($info['attachid']);
        if($attachinfo){
            echo '<div id="uploadAttach'.$info['attachid'].'"><img src="'.zmf::imgurl($info['id'],$attachinfo['filePath'],124,$attachinfo['classify']).'"/>'
                    .CHtml::link('删除','javascript:;',array('onclick'=>"delUploadImg({$info['attachid']},'".CHtml::activeId($model,"attachid")."')",'confirm'=>'不可恢复，确认删除？'))
                    . '</div>';
        }
    }
    ?>        
    <?php echo $form->hiddenField($model,'attachid',array('class'=>'form-control','value'=>$info['attachid'])); ?> <input type="hidden" id="file_upload_input"/>      
    <p class="help-block"><?php echo $form->error($model,'attachid'); ?></p>
    </div>     
    <div class="form-group">
    <?php echo $form->labelEx($model,'copy_url'); ?>
    <?php echo $form->textField($model,'copy_url',array('class'=>'form-control','value'=>$info['copy_url'])); ?>
     <p class="help-block">若是产品介绍，可填其他可证明真伪的链接地址。</p> 
     <p class="help-block"><?php echo $form->error($model,'copy_url'); ?></p>
    </div>
    <div class="form-group">
    <?php echo $form->labelEx($model,'reply_allow'); ?>
    <?php echo $form->dropDownList($model,'reply_allow',tools::allowOrNot(),array('class'=>'form-control','options' => array($info['reply_allow']=>array('selected'=>true)))); ?>
     <p class="help-block"><?php echo $form->error($model,'reply_allow'); ?></p>
    </div>
    <?php if(in_array('start_time',$fieldsArr)){?>
    <div class="form-group">
    <?php echo $form->labelEx($model,'start_time'); ?>
    <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array('model'=>$model,'attribute'=>'start_time','language'=>'zh-cn','value'=>date('Y/m/d',$info['start_time']),'options'=>array('showAnim'=>'fadeIn'),'htmlOptions'=>array('readonly'=>'readonly','class'=>'form-control','value'=>($info['start_time'])? date('Y/m/d',$info['start_time']) : ''),));?>  
     <p class="help-block"><?php echo $form->error($model,'start_time'); ?></p>
    </div>
    <?php }?>
    <?php if(in_array('expired_time',$fieldsArr)){?>
    <div class="form-group">
    <?php echo $form->labelEx($model,'expired_time'); ?>
    <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array('model'=>$model,'attribute'=>'expired_time','language'=>'zh-cn','value'=>date('Y/m/d',$info['expired_time']),'options'=>array('showAnim'=>'fadeIn'),'htmlOptions'=>array('readonly'=>'readonly','class'=>'form-control','value'=>($info['expired_time'])? date('Y/m/d',$info['expired_time']) : ''),));?>
     <p class="help-block"><?php echo $form->error($model,'expired_time'); ?></p>
    </div>
    <?php }?>
    <div class="form-group">
    <?php echo $form->labelEx($model,'content'); ?>
    <?php $this->renderPartial('//common/editor',array('model'=>$model,'content'=>$info['content'],'keyid'=>$info['id'],'type'=>'posts','simple'=>'yes'));?> 
     <p class="help-block"><?php echo $form->error($model,'content'); ?></p>
    </div>
    <?php if(in_array('tags',$fieldsArr)){
      $tagsArr=Tags::getPostTags($info['id'],'posts');if(empty($tagsArr)){$tagsArr=array();}$postTags=array_keys(CHtml::listData($tagsArr,'id',''));?>
    <div class="form-group">
      <label>标签选择</label>
      <div class="clearfix"></div>
      <?php echo CHtml::checkBoxList('tagids',$postTags,  Tags::allTags());?>
    </div>
    <?php }?>
    <?php echo CHtml::submitButton('提交',array('class'=>'btn btn-success','id'=>'user-addPost')); ?>
<?php $this->endWidget(); ?>
</div><!-- form -->  
<script>
var imgUploadUrl="<?php echo Yii::app()->createUrl('attachments/upload',array('id'=>$info['id'],'type'=>'coverimg'));?>"; $(document).ready(function(){
singleUploadify('<?php echo CHtml::activeId($model,"attachid");?>_upload','<?php echo CHtml::activeId($model,"attachid");?>',1);
;$("#user-addPost").click(function(){$(window).unbind("beforeunload");});
});  
</script>