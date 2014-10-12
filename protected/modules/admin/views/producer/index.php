<?php
/* @var $this ProducerController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Producers',
);

$this->menu=array(
	array('label'=>'Create Producer', 'url'=>array('create')),
	array('label'=>'Manage Producer', 'url'=>array('admin')),
);
?>

<h1>Producers</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
