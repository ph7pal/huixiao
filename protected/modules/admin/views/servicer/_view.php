<?php
/* @var $this ServicerController */
/* @var $data Servicer */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('uid')); ?>:</b>
	<?php echo CHtml::encode($data->uid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('faceimg')); ?>:</b>
	<?php echo CHtml::encode($data->faceimg); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('localarea')); ?>:</b>
	<?php echo CHtml::encode($data->localarea); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('truename')); ?>:</b>
	<?php echo CHtml::encode($data->truename); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('companyname')); ?>:</b>
	<?php echo CHtml::encode($data->companyname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('mainproduct')); ?>:</b>
	<?php echo CHtml::encode($data->mainproduct); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('jobname')); ?>:</b>
	<?php echo CHtml::encode($data->jobname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contactmobile')); ?>:</b>
	<?php echo CHtml::encode($data->contactmobile); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idcard')); ?>:</b>
	<?php echo CHtml::encode($data->idcard); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cTime')); ?>:</b>
	<?php echo CHtml::encode($data->cTime); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('hits')); ?>:</b>
	<?php echo CHtml::encode($data->hits); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('top')); ?>:</b>
	<?php echo CHtml::encode($data->top); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('status')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br />

	*/ ?>

</div>