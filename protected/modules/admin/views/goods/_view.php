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
        
        <b><?php echo CHtml::encode($data->getAttributeLabel('colid')); ?>:</b>
	<?php echo $data->colid2 > 0 ? CHtml::encode($data->colinfo1->title) : ''; ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colid2')); ?>:</b>
	<?php echo $data->colid2 > 0 ? CHtml::encode($data->colinfo2->title) : ''; ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colid3')); ?>:</b>
	<?php echo $data->colid2 > 0 ? CHtml::encode($data->colinfo3->title) : ''; ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colid4')); ?>:</b>
	<?php echo $data->colid2 > 0 ? CHtml::encode($data->colinfo4->title) : ''; ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colid5')); ?>:</b>
	<?php echo $data->colid2 > 0 ? CHtml::encode($data->colinfo5->title) : ''; ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cTime')); ?>:</b>
	<?php echo CHtml::encode(zmf::time($data->cTime)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gongxiao')); ?>:</b>
	<?php echo CHtml::encode($data->gongxiao); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('desc')); ?>:</b>
	<?php echo zmf::text($data->id,$data->desc,false,124); ?>
	<br />
        
	<b><?php echo CHtml::encode($data->getAttributeLabel('desc2')); ?>:</b>
	<?php echo CHtml::encode($data->desc2); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('desc3')); ?>:</b>
	<?php echo CHtml::encode($data->desc3); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('desc4')); ?>:</b>
	<?php echo CHtml::encode($data->desc4); ?>
	<br />
    <hr/>

</div>