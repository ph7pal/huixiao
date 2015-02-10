<?php
/* @var $this DealerController */
/* @var $model Dealer */

$this->breadcrumbs=array(
	'Dealers'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Dealer', 'url'=>array('index')),
	array('label'=>'Create Dealer', 'url'=>array('create')),
	array('label'=>'Update Dealer', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Dealer', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Dealer', 'url'=>array('admin')),
);
?>
<?php $this->renderPartial('_view',array('data'=>$model));?>