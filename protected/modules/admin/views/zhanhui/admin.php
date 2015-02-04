<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'zhanhui-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
                array(
                    'name'=>'uid',
                    'value'=>'$data->userinfo->truename'
                ),
                array(
                    'name'=>'localarea',
                    'value'=>'$data->areaInfo->name'
                ),
		'title',
		'zhuti',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
