<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'dealer-grid',
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
		'companyowner',
		'companyname',
		'jobname',
		'officurl',
		'contactname',
		'contactmobile',
		'mainproduct',
		'licensenumber',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
