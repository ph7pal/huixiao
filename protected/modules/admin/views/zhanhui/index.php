<?php
/* @var $this ZhanhuiController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Zhanhuis',
);

$this->menu=array(
	array('label'=>'Create Zhanhui', 'url'=>array('create')),
	array('label'=>'Manage Zhanhui', 'url'=>array('admin')),
);
?>

<h1>Zhanhuis</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
