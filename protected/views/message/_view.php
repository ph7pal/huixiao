<?php if($from=='user'){?>
<?php echo CHtml::link($data['title'],array('goods/view','id'=>$data['belongid']),array('target'=>'_blank'));?><br />
<?php }?>
<b>客户姓名:</b><?php echo CHtml::encode($data['nickname']); ?><br />
<b>联系电话:</b><?php echo CHtml::encode($data['number']); ?><br />
<b>所在地区:</b><?php echo Area::getOne($data['localarea'],'name'); ?><br />
<b>留言内容:</b><?php echo CHtml::encode($data['content']); ?><br />
<b>创建时间:</b><?php echo zmf::time($data['cTime']); ?><br />
<hr/>