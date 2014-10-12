<?php
/* @var $this DealerController */
/* @var $model Dealer */

$this->breadcrumbs=array(
	'Dealers'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Dealer', 'url'=>array('index')),
	array('label'=>'Manage Dealer', 'url'=>array('admin')),
);
?>

<h1>Create Dealer</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>