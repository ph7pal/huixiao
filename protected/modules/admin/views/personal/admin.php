<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'personal-grid',
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
		'contactname',
		'contactmobile',
		'useremail',
		'idcard',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
