<?php
/* @var $this MedalController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Medals',
);

$this->menu=array(
	array('label'=>'Create Medal', 'url'=>array('create')),
	array('label'=>'Manage Medal', 'url'=>array('admin')),
);
?>

<h1>Medals</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
