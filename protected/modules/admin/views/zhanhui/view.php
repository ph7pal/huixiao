<?php
/* @var $this ZhanhuiController */
/* @var $model Zhanhui */

$this->breadcrumbs=array(
	'Zhanhuis'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Zhanhui', 'url'=>array('index')),
	array('label'=>'Create Zhanhui', 'url'=>array('create')),
	array('label'=>'Update Zhanhui', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Zhanhui', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Zhanhui', 'url'=>array('admin')),
);
?>

<h1>View Zhanhui #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title',
		'zhuti',
		'liangdian',
		'localarea',
		'didian',
		'start_time',
		'expired_time',
		'attachid',
		'description',
		'content',
		'hits',
		'order',
		'status',
		'cTime',
		'uid',
		'canyu',
	),
)); ?>
