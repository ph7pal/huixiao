<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'jobs-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
                    'name'=>'uid',
                    'value'=>'$data->userinfo->truename'
                ),
		'title',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
