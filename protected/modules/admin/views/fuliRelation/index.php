<?php
/* @var $this FuliRelationController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Fuli Relations',
);

$this->menu=array(
	array('label'=>'Create FuliRelation', 'url'=>array('create')),
	array('label'=>'Manage FuliRelation', 'url'=>array('admin')),
);
?>

<h1>Fuli Relations</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
