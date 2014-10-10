<div class="mod">
<h3><?php echo $this->listTableTitle;?></h3>
<table class="table table-hover table-condensed">
<?php if(!empty($posts)){foreach ($posts as $row): ?> 






    <tr <?php tools::exStatusToClass($row['status']);?>>
        <td>
            <div class="bs-callout bs-callout-info">
                <p>
                    <?php echo date('y-m-d H:i:s',$row['cTime']);?>
                    <?php echo CHtml::link('删除', array('del/sth', 'table' => $table, 'id' => $row['id'], 'single' => 'yes')); ?>
                </p>
                <p><?php echo $row['title']; ?></p>
                
            </div>
        </td>
    </tr>
<?php endforeach; }?>
<tr>
    <td>
        <?php echo CHtml::link('新增', array('user/goods'), array('class' => 'btn btn-success')); ?>
        <div class="manu" style="float:right"><?php $this->widget('CLinkPager', array('pages' => $pages)); ?> </div>
    </td>
</tr>
</table>
</div>