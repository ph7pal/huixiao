<?php
/* @var $this ZhanhuiController */
/* @var $model Zhanhui */

$this->breadcrumbs=array(
	'Zhanhuis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Zhanhui', 'url'=>array('index')),
	array('label'=>'Manage Zhanhui', 'url'=>array('admin')),
);
?>

<h1>Create Zhanhui</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>