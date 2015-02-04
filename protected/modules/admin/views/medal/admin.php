<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'medal-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'title',
		'logo',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
