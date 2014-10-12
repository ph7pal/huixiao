<?php
/* @var $this ServicerController */
/* @var $model Servicer */

$this->breadcrumbs=array(
	'Servicers'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Servicer', 'url'=>array('index')),
	array('label'=>'Manage Servicer', 'url'=>array('admin')),
);
?>

<h1>Create Servicer</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>