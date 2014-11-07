<?php
/* @var $this MedalController */
/* @var $model Medal */

$this->breadcrumbs=array(
	'Medals'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Medal', 'url'=>array('index')),
	array('label'=>'Manage Medal', 'url'=>array('admin')),
);
?>

<h1>Create Medal</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>