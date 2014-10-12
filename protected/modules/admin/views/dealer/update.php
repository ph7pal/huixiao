<?php
/* @var $this DealerController */
/* @var $model Dealer */

$this->breadcrumbs=array(
	'Dealers'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Dealer', 'url'=>array('index')),
	array('label'=>'Create Dealer', 'url'=>array('create')),
	array('label'=>'View Dealer', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Dealer', 'url'=>array('admin')),
);
?>

<h1>Update Dealer <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>