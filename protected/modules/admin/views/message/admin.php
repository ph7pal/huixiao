<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'message-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
                    'name'=>'uid',
                    'value'=>'$data->userinfo->truename'
                ),
		'localarea',
		'belongid',
		'classify',
		'nickname',
		'number',
		'content',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
