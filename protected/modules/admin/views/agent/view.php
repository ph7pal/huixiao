<?php
/* @var $this AgentController */
/* @var $model Agent */

$this->breadcrumbs=array(
	'Agents'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Agent', 'url'=>array('index')),
	array('label'=>'Create Agent', 'url'=>array('create')),
	array('label'=>'Update Agent', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Agent', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Agent', 'url'=>array('admin')),
);
?>
<?php $this->renderPartial('_view',array('data'=>$model));?>