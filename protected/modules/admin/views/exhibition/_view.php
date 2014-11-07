<?php
/* @var $this ExhibitionController */
/* @var $data Exhibition */
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

	<b><?php echo CHtml::encode($data->getAttributeLabel('companyowner')); ?>:</b>
	<?php echo CHtml::encode($data->companyowner); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('companyname')); ?>:</b>
	<?php echo CHtml::encode($data->companyname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('officeurl')); ?>:</b>
	<?php echo CHtml::encode($data->officeurl); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contactname')); ?>:</b>
	<?php echo CHtml::encode($data->contactname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contactmobile')); ?>:</b>
	<?php echo CHtml::encode($data->contactmobile); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('mainproduct')); ?>:</b>
	<?php echo CHtml::encode($data->mainproduct); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('licensenumber')); ?>:</b>
	<?php echo CHtml::encode($data->licensenumber); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cTime')); ?>:</b>
	<?php echo CHtml::encode(zmf::time($data->cTime)); ?>
	<br />
</div>