<?php if(!empty($posts)){?>
<div class="mod">
    <h2>报名列表</h2>
    <table class="table table-striped table-hover">
        <tr><td style="width:20%">姓名</td><td style="width:20%">号码</td><td style="width:20%">邮箱</td><td style="width:15%">身份</td><td style="width:25%">展会</td></tr>
        <?php foreach ($posts as $row): ?> 
        <tr>            
            <td><?php echo $row['username']; ?></td>
            <td><?php echo $row['phone']; ?></td>
            <td><?php echo $row['email']; ?></td>            
            <td><?php echo $row['type'];?></td>
            <td><?php echo CHtml::link(zmf::subStr($row['title'],8),array('user/show','action'=>'zhanhui','logid'=>$row['logid']));?></td>
        </tr>
        <?php endforeach; ?>
    </table>
    <?php $this->renderPartial('//common/pager', array('pages' => $pages)); ?>
</div>
<?php }?>