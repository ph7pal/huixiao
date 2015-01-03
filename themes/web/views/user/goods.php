<div class="mod">
<h3><?php echo $this->listTableTitle;?></h3>
<table class="table table-hover table-condensed">
<?php if(!empty($posts)){foreach ($posts as $row): ?> 
    <tr <?php tools::exStatusToClass($row['status']);?>>
        <td style="width:70%;">
            <?php echo CHtml::link($row['title'], array('goods/view', 'id' => $row['id']),array('target'=>'_blank')); ?>
        </td>
        <td style="width:30%;" class="text-right">
            <?php echo CHtml::link('查看留言', array('goods/view', 'id' => $row['id']),array('target'=>'_blank')); ?>
            <?php echo CHtml::link('编辑', array('user/goods', 'id' => $row['id'])); ?>
            <?php echo CHtml::link('删除', array('del/sth', 'table' => $table, 'id' => $row['id'], 'single' => 'yes')); ?>
        </td>
    </tr>
<?php endforeach; }?>
<tr>
    <td colspan="2">
        <?php echo CHtml::link('新增', array('user/goods'), array('class' => 'btn btn-success')); ?>
        <div class="manu" style="float:right"><?php $this->widget('CLinkPager', array('pages' => $pages)); ?> </div>
    </td>
</tr>
</table>
</div>