<tr>
    <td>&nbsp;</td>
    <td style="width:25%">所属</td>
    <td style="width:50%">内容</td>
    <td style="width:15%">时间</td>
    <td style="width:8%">操作</td>
</tr>
<?php foreach ($posts as $row): ?> 
<tr <?php tools::exStatusToClass($row['status']);?>>
        <td><label class="checkbox-inline"><?php echo CHtml::checkBox('ids[]', '', array('value' => $row['id'])); ?></label></td>
        <td><?php if ($row['classify'] == 'posts') { ?>【文章】<?php } ?><?php echo Posts::getOne($row['logid'], 'title'); ?></td>    
        <td><?php echo $row['content']; ?></td>
        <td><?php echo date('Y-m-d H:i', $row['cTime']); ?></td>
        <td>
            <?php $this->renderPartial('/common/manageBar',array('status'=>$row['status'],'keyname'=>'keyid','keyid'=>$row['id'],'table'=>$table));?> 
        </td>

    </tr>
<?php endforeach; ?>
<tr>
    <td colspan="5">
        <?php $this->renderPartial('/common/submitBar',array('pages'=>$pages));?>
    </td>             
</tr>