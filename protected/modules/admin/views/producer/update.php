<?php
/* @var $this ProducerController */
/* @var $model Producer */

$this->breadcrumbs=array(
	'Producers'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Producer', 'url'=>array('index')),
	array('label'=>'Create Producer', 'url'=>array('create')),
	array('label'=>'View Producer', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Producer', 'url'=>array('admin')),
);
?>

<h1>Update Producer <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>