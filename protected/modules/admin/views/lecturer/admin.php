<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'lecturer-grid',
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
		'companyname',
		'companyowner',
		'belongCompany',
		'belongTeam',
		'jobname',
		'contactmobile',
		'idcard',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
