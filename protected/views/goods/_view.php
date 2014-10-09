<?php
/* @var $this GoodsController */
/* @var $data Goods */
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

	<b><?php echo CHtml::encode($data->getAttributeLabel('title')); ?>:</b>
	<?php echo CHtml::encode($data->title); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('piwen')); ?>:</b>
	<?php echo CHtml::encode($data->piwen); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gongxiao')); ?>:</b>
	<?php echo CHtml::encode($data->gongxiao); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('desc')); ?>:</b>
	<?php echo CHtml::encode($data->desc); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('desc2')); ?>:</b>
	<?php echo CHtml::encode($data->desc2); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('desc3')); ?>:</b>
	<?php echo CHtml::encode($data->desc3); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('desc4')); ?>:</b>
	<?php echo CHtml::encode($data->desc4); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colid')); ?>:</b>
	<?php echo CHtml::encode($data->colid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colid2')); ?>:</b>
	<?php echo CHtml::encode($data->colid2); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colid3')); ?>:</b>
	<?php echo CHtml::encode($data->colid3); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colid4')); ?>:</b>
	<?php echo CHtml::encode($data->colid4); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colid5')); ?>:</b>
	<?php echo CHtml::encode($data->colid5); ?>
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