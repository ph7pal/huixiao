<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'producer-grid',
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
		'address',
		'description',
		'companyurl',
		'contactname',
		'contactmobile',
		'mainproduct',
		'licensenumber',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
