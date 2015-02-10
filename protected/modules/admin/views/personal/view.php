<?php
/* @var $this PersonalController */
/* @var $model Personal */

$this->breadcrumbs=array(
	'Personals'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Personal', 'url'=>array('index')),
	array('label'=>'Create Personal', 'url'=>array('create')),
	array('label'=>'Update Personal', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Personal', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Personal', 'url'=>array('admin')),
);
?>
<?php $this->renderPartial('_view',array('data'=>$model));?>