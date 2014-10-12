<?php
/* @var $this WebsiteController */
/* @var $data Website */
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

	<b><?php echo CHtml::encode($data->getAttributeLabel('companyname')); ?>:</b>
	<?php echo CHtml::encode($data->companyname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('companyowner')); ?>:</b>
	<?php echo CHtml::encode($data->companyowner); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('websitename')); ?>:</b>
	<?php echo CHtml::encode($data->websitename); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('websiteurl')); ?>:</b>
	<?php echo CHtml::encode($data->websiteurl); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('websiteowner')); ?>:</b>
	<?php echo CHtml::encode($data->websiteowner); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contactmobile')); ?>:</b>
	<?php echo CHtml::encode($data->contactmobile); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('licensenumber')); ?>:</b>
	<?php echo CHtml::encode($data->licensenumber); ?>
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