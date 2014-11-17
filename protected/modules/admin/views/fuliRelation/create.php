<?php
/* @var $this FuliRelationController */
/* @var $model FuliRelation */

$this->breadcrumbs=array(
	'Fuli Relations'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List FuliRelation', 'url'=>array('index')),
	array('label'=>'Manage FuliRelation', 'url'=>array('admin')),
);
?>

<h1>Create FuliRelation</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>