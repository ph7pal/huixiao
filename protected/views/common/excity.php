<?php if(!$info){?>
<?php echo CHtml::dropDownList('cityid[]','',Area::listArea(),array('onchange'=>'ajaxCity("cityid","localarea","addcityholder",1)','empty'=>'--请选择--')); ?>
<?php //echo CHtml::dropDownList('cityid[]','',Area::listArea(),array('empty'=>'--请选择--')); ?>
<span id="addcityholder"></span>
<?php }else{?>
<?php if(!$blocked){ echo CHtml::dropDownList('cityid[]','',Area::listArea(),array('onchange'=>'ajaxCity("cityid","localarea","addcityholder",1)','empty'=>'--请选择--'));} ?><span id="addcityholder"><?php $selected=  Area::getWholeOne($info);echo $selected;?></span>
<?php } ?>