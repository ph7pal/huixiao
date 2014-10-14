<?php
/* @var $this ZhanhuiController */
/* @var $model Zhanhui */

$this->breadcrumbs=array(
	'Zhanhuis'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Zhanhui', 'url'=>array('index')),
	array('label'=>'Create Zhanhui', 'url'=>array('create')),
	array('label'=>'View Zhanhui', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Zhanhui', 'url'=>array('admin')),
);
?>

<h1>Update Zhanhui <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>