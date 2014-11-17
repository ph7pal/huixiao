<?php
/* @var $this FuliController */
/* @var $model Fuli */

$this->breadcrumbs=array(
	'Fulis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Fuli', 'url'=>array('index')),
	array('label'=>'Manage Fuli', 'url'=>array('admin')),
);
?>

<h1>Create Fuli</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>