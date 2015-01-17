<?php if(!empty($posts)){?>
<div class="mod">
    <h2>客户留言列表</h2>
    <?php foreach ($posts as $row): ?> 
    <?php $this->renderPartial('//message/_view',array('data'=>$row,'from'=>'user'));?>
    <?php endforeach; ?>    
    <?php $this->renderPartial('//common/pager', array('pages' => $pages)); ?>
</div>
<?php }?>