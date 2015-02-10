<?php
/* @var $this LecturerController */
/* @var $model Lecturer */

$this->breadcrumbs=array(
	'Lecturers'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Lecturer', 'url'=>array('index')),
	array('label'=>'Create Lecturer', 'url'=>array('create')),
	array('label'=>'Update Lecturer', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Lecturer', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Lecturer', 'url'=>array('admin')),
);
?>
<?php $this->renderPartial('_view',array('data'=>$model));?>
