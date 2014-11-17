<?php
/* @var $this FuliController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Fulis',
);

$this->menu=array(
	array('label'=>'Create Fuli', 'url'=>array('create')),
	array('label'=>'Manage Fuli', 'url'=>array('admin')),
);
?>

<h1>Fulis</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
