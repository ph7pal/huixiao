<?php
/* @var $this ServicerController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Servicers',
);

$this->menu=array(
	array('label'=>'Create Servicer', 'url'=>array('create')),
	array('label'=>'Manage Servicer', 'url'=>array('admin')),
);
?>

<h1>Servicers</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
