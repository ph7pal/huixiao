<?php
/* @var $this FuliRelationController */
/* @var $data FuliRelation */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('jobid')); ?>:</b>
	<?php echo CHtml::encode($data->jobid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fuliid')); ?>:</b>
	<?php echo CHtml::encode($data->fuliid); ?>
	<br />


</div>