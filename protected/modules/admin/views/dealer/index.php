<?php
/* @var $this DealerController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Dealers',
);

$this->menu=array(
	array('label'=>'Create Dealer', 'url'=>array('create')),
	array('label'=>'Manage Dealer', 'url'=>array('admin')),
);
?>

<h1>Dealers</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
