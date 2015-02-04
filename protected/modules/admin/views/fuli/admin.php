<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'fuli-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'title',
		'classify',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
