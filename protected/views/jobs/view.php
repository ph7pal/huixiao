<?php
/* @var $this JobsController */
/* @var $model Jobs */

$this->breadcrumbs=array(
	'Jobs'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Jobs', 'url'=>array('index')),
	array('label'=>'Create Jobs', 'url'=>array('create')),
	array('label'=>'Update Jobs', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Jobs', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Jobs', 'url'=>array('admin')),
);
?>

<h1>View Jobs #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'uid',
		'title',
		'gs_title',
		'gs_didian',
		'gs_guimo',
		'gs_xingzhi',
		'gs_miaoshu',
		'gs_zhuye',
		'gz_miaoshu',
		'gz_didian',
		'gz_jingyan',
		'gz_xingzhi',
		'gz_zdxueli',
		'gz_gljy',
		'gz_xinzi',
		'gz_renshu',
		'gz_zhiwei',
		'gz_fuli',
		'gz_contactor',
		'gz_contact',
		'cTime',
		'hits',
		'top',
		'status',
	),
)); ?>
