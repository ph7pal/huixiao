<li class="clearfix item">
  <span class="pic">
    <?php echo CHtml::link(zmf::avatar($data['faceimg'],'nouid').'<span class="title">'.$data['truename'].'</span>',array('lecturer/view','id'=>$data['id']),array('target'=>'_blank'));?>
  </span>
  <span class="txt">
    <p class="clearfix"><?php echo zmf::creditIcon($data['uid']);?></p>
    <p>所属公司：<?php echo $data['companyname'];?></p>
  </span>
  <!--span class="num"><p>关 注 度：<em>930次</em></p></span-->
</li>