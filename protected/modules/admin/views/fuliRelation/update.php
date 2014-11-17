<?php
/* @var $this FuliRelationController */
/* @var $model FuliRelation */

$this->breadcrumbs=array(
	'Fuli Relations'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List FuliRelation', 'url'=>array('index')),
	array('label'=>'Create FuliRelation', 'url'=>array('create')),
	array('label'=>'View FuliRelation', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage FuliRelation', 'url'=>array('admin')),
);
?>

<h1>Update FuliRelation <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>