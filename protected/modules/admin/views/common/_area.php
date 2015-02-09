<?php $this->widget('CAutoComplete',
    array(
       'name'=>'suggest_area',
       'url'=>array('ajax/area'),
       'max'=>10, //specifies the max number of items to display
       'minChars'=>2,
       'delay'=>500, //number of milliseconds before lookup occurs
       'matchCase'=>false, //match case when performing a lookup?
       'htmlOptions'=>array('class'=>'form-control'),
       'methodChain'=>".result(function(event,item){ $('#".CHtml::activeId($model,$fieldName)."').val(item[1]);})",
       ));
?>