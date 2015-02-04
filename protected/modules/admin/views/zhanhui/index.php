<h1>展会</h1>
<table class="table table-hover">
    <tr>
        <td style="width: 10%;">作者</td>
        <td>标题</td>
        <td style="width: 10%;">管理</td>
    </tr>
    <?php foreach($posts as $k=>$val){?>
    <tr <?php tools::exStatusToClass($val['status']);?>>
        <td><?php $_user=Users::getUserInfo($val['uid'],'truename'); echo $_user;?></td>
        <td><?php echo CHtml::link($val['title'],array('/zhanhui/view','id'=>$val['id']),array('target'=>'_blank'));?></td>
        <td>
        <?php $this->renderPartial('/common/_manage',array('table'=>'zhanhui','keyid'=>$val['id']));?>
        </td>
    </tr>
    <?php }?>
</table>
<?php $this->widget('CLinkPager', array('pages' => $pages)); ?>