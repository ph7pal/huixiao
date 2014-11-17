<?php
/* @var $this FuliRelationController */
/* @var $model FuliRelation */

$this->breadcrumbs=array(
	'Fuli Relations'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List FuliRelation', 'url'=>array('index')),
	array('label'=>'Create FuliRelation', 'url'=>array('create')),
	array('label'=>'Update FuliRelation', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete FuliRelation', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage FuliRelation', 'url'=>array('admin')),
);
?>

<h1>View FuliRelation #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'jobid',
		'fuliid',
	),
)); ?>
