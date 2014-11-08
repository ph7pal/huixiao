<div class="mod">
<h3><?php echo $this->listTableTitle;?></h3>
<table class="table table-hover table-condensed">
<?php foreach ($posts as $row): ?> 
    <tr <?php tools::exStatusToClass($row['status']);?>>        
        <td style="width:70%">
            <?php echo $row['title']; ?>            
        </td>
        <td style="width:30%" class="text-right">
            <?php echo CHtml::link('浏览', array('zhanhui/view', 'id' => $row['id']),array('target'=>'_blank')); ?>
            <?php echo CHtml::link('编辑', array('user/zhanhui', 'id' => $row['id'])); ?>
            <?php echo CHtml::link('删除', array('del/sth', 'table' => $table, 'id' => $row['id'], 'single' => 'yes')); ?>
        </td>
    </tr>
<?php endforeach; ?>
<tr>
    <td>        
        <?php $this->renderPartial('/common/pager', array('pages' => $pages)); ?> 
    </td>
</tr>
<tr>
    <td>
        <?php echo CHtml::link('新增', array('user/zhanhui'), array('class' => 'btn btn-success')); ?>
    </td>
</tr>
</table>
</div>