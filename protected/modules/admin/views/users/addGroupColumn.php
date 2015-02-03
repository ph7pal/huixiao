<h4><?php echo $info['title'];?></h4>
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'goods-form',
	'enableAjaxValidation'=>false,
)); ?>
<?php 
$_adArr=array();
$groups=  Columns::listAll();
$groupArr=array();
foreach($groups as $group){
    $groupArr[$group['id']]=$group['title'];
}
echo CHtml::checkBoxList('groupids',$selected,$groupArr); ?>
<div class="form-group">
    <?php echo CHtml::submitButton('保存',array('class'=>'btn btn-primary')); ?>
</div>
<?php $this->endWidget(); ?>