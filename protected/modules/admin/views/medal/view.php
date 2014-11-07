<?php
/* @var $this MedalController */
/* @var $model Medal */

$this->breadcrumbs=array(
	'Medals'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Medal', 'url'=>array('index')),
	array('label'=>'Create Medal', 'url'=>array('create')),
	array('label'=>'Update Medal', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Medal', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Medal', 'url'=>array('admin')),
);
?>

<h1>View Medal #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title',
		'logo',
		'cTime',
	),
)); ?>
