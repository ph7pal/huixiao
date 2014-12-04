<?php
/* @var $this ProducerController */
/* @var $model Producer */

$this->breadcrumbs=array(
	'Producers'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Producer', 'url'=>array('index')),
	array('label'=>'Create Producer', 'url'=>array('create')),
	array('label'=>'Update Producer', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Producer', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Producer', 'url'=>array('admin')),
);
?>

<h1>View Producer #<?php echo $model->id; ?></h1>
<?php $this->renderPartial('_view',array('data'=>$model));?>