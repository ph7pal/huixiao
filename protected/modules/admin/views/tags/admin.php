<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'tags-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'title',
		'name',
		'classify',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
