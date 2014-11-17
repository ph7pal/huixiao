<?php
/* @var $this FuliController */
/* @var $model Fuli */

$this->breadcrumbs=array(
	'Fulis'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Fuli', 'url'=>array('index')),
	array('label'=>'Create Fuli', 'url'=>array('create')),
	array('label'=>'Update Fuli', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Fuli', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Fuli', 'url'=>array('admin')),
);
?>

<h1>View Fuli #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title',
		'classify',
		'order',
		'hits',
		'status',
		'cTime',
	),
)); ?>
