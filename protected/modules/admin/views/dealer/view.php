<?php
/* @var $this DealerController */
/* @var $model Dealer */

$this->breadcrumbs=array(
	'Dealers'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Dealer', 'url'=>array('index')),
	array('label'=>'Create Dealer', 'url'=>array('create')),
	array('label'=>'Update Dealer', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Dealer', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Dealer', 'url'=>array('admin')),
);
?>

<h1>View Dealer #<?php echo $model->id; ?></h1>

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