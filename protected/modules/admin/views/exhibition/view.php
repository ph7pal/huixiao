<?php
/* @var $this ExhibitionController */
/* @var $model Exhibition */

$this->breadcrumbs=array(
	'Exhibitions'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Exhibition', 'url'=>array('index')),
	array('label'=>'Create Exhibition', 'url'=>array('create')),
	array('label'=>'Update Exhibition', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Exhibition', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Exhibition', 'url'=>array('admin')),
);
?>

<h1>View Exhibition #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'uid',
		'faceimg',
		'localarea',
		'companyowner',
		'companyname',
		'jobname',
		'officurl',
		'contactname',
		'contactmobile',
		'mainproduct',
		'licensenumber',
		'cTime',
		'hits',
		'top',
		'status',
	),
)); ?>
