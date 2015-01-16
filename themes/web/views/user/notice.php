<?php if(!empty($posts)){?>
<div class="mod">
    <h2>提醒</h2>
    <div class="article">
        <?php foreach ($posts as $row): ?> 
        <div class="bd" <?php if($row['new']){?>style="font-weight: bold" <?php }?>>
            <p><?php echo $row['author'];?></p>
            <span><?php echo $row['content']; ?></span>
            <span style="float:right;color:grey">
                <?php echo date('Y/m/d H:i:s',$row['cTime']);?>
                <?php echo CHtml::link('x','javascript:',array('onclick'=>'deletePost("'.$row['id'].'","notice","'.Yii::app()->createUrl('user/notice').'")','confirm'=>Yii::t('default','deleteConfirm')));?>
            </span>
        </div>
        <hr/>
        <?php endforeach; ?>
    </div>
    <?php $this->renderPartial('//common/pager', array('pages' => $pages)); ?>
</div>
<?php }?>