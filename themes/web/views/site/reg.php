<?php //$this->renderPartial('/common/topdesc');?>
<div class="wrap clear">
    <div class="col-md-8 col-xs-8 padding-right-5">
    <?php $this->renderPartial('//ads/ads',array('position'=>'regpage','type'=>'flash'));?>  
    </div>
    <div class="col-md-4 col-xs-4">
        <div class="panel panel-primary row">
            <div class="panel-heading">
              <h3 class="panel-title">欢迎注册</h3>
            </div>
            <div class="panel-body">
        <?php $form=$this->beginWidget('CActiveForm', array(
                'id'=>'users-addUser-form',
                'enableAjaxValidation'=>true,
        )); ?>	

	<?php echo $form->errorSummary($model); ?>

	<p>
		<?php echo $form->labelEx($model,'username'); ?>
		<?php echo $form->textField($model,'username',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'username'); ?>
	</p>
    <p >
		<?php echo $form->labelEx($model,'truename'); ?>
		<?php echo $form->textField($model,'truename',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'truename'); ?>
	</p>

	<p >
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'password'); ?>
	</p> 
	<p>
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'email'); ?>
	</p>
    <p>
      <label>注册类型<span class="required">*</span></label>
      <select name="credit" id='credit' class="form-control">
        <option value=''>--请选择--</option>
        <?php foreach(tools::userCredits() as $list){?>
        <option value="<?php echo $list['type'];?>"><?php echo $list['title'];?></option>
        <?php }?>
      </select>
	</p>

	<p >
            <?php echo CHtml::submitButton('提交',array('class'=>'btn btn-primary','onclick'=>'return submitCheck();')); ?>
            <?php echo CHtml::link('已有账号？立即登录',array('site/login'));?>
	</p>

        <?php $this->endWidget(); ?>
          </div>
        </div>
        </div>
</div><!-- form -->
<script>
function submitCheck(){
  var type=$('#credit').val();
  if(type=='' || typeof type=='undefined'){
    alert('请选择注册类型');
    return false;
  }
  return true;
}
</script>