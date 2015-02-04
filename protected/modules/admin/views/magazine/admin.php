<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'magazine-grid',
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
		'officurl',
		'contactname',
		'contactmobile',
		'mainproduct',
		'magazinename',
		'licensenumber',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
