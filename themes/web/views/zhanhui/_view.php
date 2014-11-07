<div class="item clearfix">
    <div class="hd yahei">
        <?php echo CHtml::link($data['title'],array('zhanhui/view','id'=>$data['id']));?><span class="lf"></span><span class="rt"></span>
    </div>
    <div class="left">
        <a href="<?php echo Yii::app()->createUrl('zhanhui/view',array('id'=>$data['id']));?>">
            <img width="300" height="185" src="<?php echo $data['faceurl'];?>" alt="<?php echo $data['title'];?>" /></a>
    </div>
    <div class="right">
         <p style="margin-left: 68px; text-indent: -68px;">
            <em class="orange">展会主题：</em><?php echo $data['zhuti'];?>
        </p>
        <p>
            <em>报名截止：</em><?php echo date('Y年m月d日',$data['expired_time']);?>
        </p>
        <p>
            <em>展会地点：</em><?php echo $data['didian'];?>
        </p>
        <p>
            <em>展会日期：</em><span class="time"><?php echo date('Y年m月d日',$data['start_time']);?></span>
        </p>
        <p>
          <em>展会状态：</em><?php if($data['status']!=Posts::STATUS_PASSED){echo '已结束';}elseif($data['expired_time']>time()){echo '<span class="zjing">报名中</span>';}else{echo '报名已结束';}?>  
        </p>
        <p>
            <?php if($data['expired_time']>=time())echo CHtml::link('立即报名',array('zhanhui/view','id'=>$data['id']),array('class'=>'menu m_1'));?>
        </p>
    </div>
    <div class="bao_num">
        <?php echo $data['canyu'];?>
    </div>
</div>