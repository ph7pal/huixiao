<?php
/* @var $this JobsController */
/* @var $data Jobs */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('uid')); ?>:</b>
	<?php echo CHtml::encode($data->userinfo->truename); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('title')); ?>:</b>
	<?php echo CHtml::encode($data->title); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gs_title')); ?>:</b>
	<?php echo CHtml::encode($data->gs_title); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gs_didian')); ?>:</b>
	<?php echo CHtml::encode($data->gs_didian); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gs_guimo')); ?>:</b>
	<?php echo CHtml::encode($data->gs_guimo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gs_xingzhi')); ?>:</b>
	<?php echo CHtml::encode($data->gs_xingzhi); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gs_miaoshu')); ?>:</b>
	<?php echo CHtml::encode($data->gs_miaoshu); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gs_zhuye')); ?>:</b>
	<?php echo CHtml::encode($data->gs_zhuye); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_miaoshu')); ?>:</b>
	<?php echo CHtml::encode($data->gz_miaoshu); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_didian')); ?>:</b>
	<?php echo CHtml::encode($data->areaInfo->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_jingyan')); ?>:</b>
	<?php echo CHtml::encode(Jobs::jingyan($data->gz_jingyan)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_xingzhi')); ?>:</b>
	<?php echo CHtml::encode($data->gz_xingzhi); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_zdxueli')); ?>:</b>
	<?php echo CHtml::encode(Jobs::xueli($data->gz_zdxueli)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_gljy')); ?>:</b>
	<?php echo CHtml::encode(Jobs::jingyan($data->gz_gljy)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_xinzi')); ?>:</b>
	<?php echo CHtml::encode(Jobs::money($data->gz_xinzi)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_renshu')); ?>:</b>
	<?php echo CHtml::encode($data->gz_renshu); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_zhiwei')); ?>:</b>
	<?php echo CHtml::encode($data->gz_zhiwei); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_fuli')); ?>:</b>
    <?php if(!empty($data->fulis)){foreach($data->fulis as $fuli){echo CHtml::encode($fuli->info->title).'&nbsp;&nbsp;';}} ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_contactor')); ?>:</b>
	<?php echo CHtml::encode($data->gz_contactor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gz_contact')); ?>:</b>
	<?php echo CHtml::encode($data->gz_contact); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cTime')); ?>:</b>
	<?php echo CHtml::encode(zmf::time($data->cTime)); ?>
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

</div>
<hr/>