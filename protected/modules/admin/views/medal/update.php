<?php
/* @var $this MedalController */
/* @var $model Medal */

$this->breadcrumbs=array(
	'Medals'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Medal', 'url'=>array('index')),
	array('label'=>'Create Medal', 'url'=>array('create')),
	array('label'=>'View Medal', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Medal', 'url'=>array('admin')),
);
?>

<h1>Update Medal <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>