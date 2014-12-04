<?php
/* @var $this ZhanhuiController */
/* @var $model Zhanhui */

$this->breadcrumbs=array(
	'Zhanhuis'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Zhanhui', 'url'=>array('index')),
	array('label'=>'Create Zhanhui', 'url'=>array('create')),
	array('label'=>'Update Zhanhui', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Zhanhui', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Zhanhui', 'url'=>array('admin')),
);
?>

<h1>View Zhanhui #<?php echo $model->id; ?></h1>
<?php $this->renderPartial('_view',array('data'=>$model));?>