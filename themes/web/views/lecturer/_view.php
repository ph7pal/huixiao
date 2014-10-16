<li class="clearfix item">
  <span class="pic">
    <?php echo CHtml::link(zmf::avatar($data['uid'],'big').'<span class="title">'.$data['truename'].'</span>',array('lecturer/view','id'=>$data['id']),array('target'=>'_blank'));?>
  </span>
  <span class="txt">
    <p class="clearfix"><span class="fl">认证级别级别：</span>  <s class="i i_jin" title="铜牌设计师"></s></p>
    <p>所属公司：<?php echo $data['companyname'];?></p>
  </span>
  <!--span class="num"><p>关 注 度：<em>930次</em></p></span-->
</li>