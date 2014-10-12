<?php
/* @var $this ServicerController */
/* @var $model Servicer */

$this->breadcrumbs=array(
	'Servicers'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Servicer', 'url'=>array('index')),
	array('label'=>'Create Servicer', 'url'=>array('create')),
	array('label'=>'View Servicer', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Servicer', 'url'=>array('admin')),
);
?>

<h1>Update Servicer <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>