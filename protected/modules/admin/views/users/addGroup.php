<fieldset>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'user-group-addGroup-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>true,
)); ?>
<table>	
	<?php echo $form->errorSummary($model); ?>
	<?php echo $form->hiddenField($model,'id',array('value'=>$info['id'])); ?>
        <tr>
            <td class="post_title"><?php echo $form->labelEx($model,'title'); ?></td><td>&nbsp;</td>
        </tr>
        <tr>
            <td><?php echo $form->textField($model,'title',array('class'=>'form-control','value'=>$info['title'])); ?></td><td><?php echo $form->error($model,'title'); ?></td>
        </tr>
        <tr>
            <td class="post_title"><?php echo $form->labelEx($model,'powers'); ?></td><td>&nbsp;</td>
        </tr>
  </table>
   <ul class="list-group">
        <?php $powers=GroupPowers::getDesc('super');foreach($powers as $key=>$val){
            echo "<li style='color:red' class='list-group-item'><span>{$val['desc']}</span></li>";
            foreach($val['detail'] as $k=>$v){
               echo "<li class='list-group-item'><label class='checkbox-inline'><span>&nbsp;&nbsp;<input type='checkbox' name='powers[]' value='{$k}'";
               if(in_array('all',$mine)){
                   echo "checked='checked'";
                }elseif(in_array($k,$mine)){
                   echo "checked='checked'"; 
                }
               echo "/>{$v}</label></li>";  
            }
        }?>
    </ul>
  
  <div class="form-group">
    <?php echo $form->labelEx($model,'posts_perh'); ?>
    <?php echo $form->textField($model,'posts_perh',array('class'=>'form-control','value'=>$info['posts_perh'])); ?>
     <p class="help-block"><?php echo $form->error($model,'posts_perh'); ?></p>
  </div>
  <div class="form-group">
    <?php echo $form->labelEx($model,'comments_perh'); ?>
    <?php echo $form->textField($model,'comments_perh',array('class'=>'form-control','value'=>$info['comments_perh'])); ?>
     <p class="help-block"><?php echo $form->error($model,'comments_perh'); ?></p>
  </div>
  <div class="form-group">
    <?php echo $form->labelEx($model,'attach_perh'); ?>
    <?php echo $form->textField($model,'attach_perh',array('class'=>'form-control','value'=>$info['attach_perh'])); ?>
     <p class="help-block"><?php echo $form->error($model,'attach_perh'); ?></p>
  </div>
    <?php echo CHtml::submitButton('提交',array('class'=>'btn btn-primary')); ?> 
<?php $this->endWidget(); ?>
</div><!-- form -->
</fieldset>