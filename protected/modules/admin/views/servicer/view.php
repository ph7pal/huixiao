<?php
/* @var $this ServicerController */
/* @var $model Servicer */

$this->breadcrumbs=array(
	'Servicers'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Servicer', 'url'=>array('index')),
	array('label'=>'Create Servicer', 'url'=>array('create')),
	array('label'=>'Update Servicer', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Servicer', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Servicer', 'url'=>array('admin')),
);
?>
<?php $this->renderPartial('_view',array('data'=>$model));?>