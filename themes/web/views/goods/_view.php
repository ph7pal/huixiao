<div class="mod">
    <dl class="b_prod">
        <dt class="pic">        	
            <?php echo CHtml::link(CHtml::image($data['faceurl'],CHtml::encode($data['title'])),array('goods/view','id'=>$data['id']),array('target'=>'_blank')); ?>
        </dt>
        <dd class="b_info">
            <p class="tit"><?php echo CHtml::link(CHtml::encode($data['title']),array('goods/view','id'=>$data['id']),array('target'=>'_blank')); ?></p>
            <p class="c_name">产品名称：<?php echo CHtml::link(CHtml::encode($data['title']),array('goods/view','id'=>$data['id']),array('target'=>'_blank')); ?></p>
            <p class="c_name">批准文号：<?php echo CHtml::encode($data['piwen']); ?></p>
            <p class="spec">产品功效：<?php echo CHtml::encode($data['gongxiao']); ?></p>
            <p class="yd">生产厂家：<?php echo CHtml::link($data['truename'],array('mobile/index','uid'=>$data['uid']),array('target'=>'_blank')); ?></p>
        </dd>
    </dl>
</div>