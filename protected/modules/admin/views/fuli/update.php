<?php
/* @var $this FuliController */
/* @var $model Fuli */

$this->breadcrumbs=array(
	'Fulis'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Fuli', 'url'=>array('index')),
	array('label'=>'Create Fuli', 'url'=>array('create')),
	array('label'=>'View Fuli', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Fuli', 'url'=>array('admin')),
);
?>

<h1>Update Fuli <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>