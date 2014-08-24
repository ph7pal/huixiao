<?php
$this->menu=array(
	array('label'=>'Create Tags', 'url'=>array('create')),
	array('label'=>'Manage Tags', 'url'=>array('admin')),
);
?>
<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>