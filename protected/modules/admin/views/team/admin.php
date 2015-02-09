<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'team-grid',
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
		'teamname',
		'companyowner',
		'contactname',
		'contactmobile',
		'mainproduct',
		'licensenumber',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
