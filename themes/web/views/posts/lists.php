<div class="wrap clear">
    <?php $this->renderPartial('aside',array('colid'=>$info['id']));?>
    <div class="mainBox">	
        <?php $this->renderPartial('bread',array('info'=>$info));?>
            <table class="table table-hover">
                <?php foreach($posts as $row):?> 
                    <tr>                        
                        <td><?php echo CHtml::link($row['title'],array('posts/show','id'=>$row['id']),array('class'=>'title'));?><span class="date"><?php echo date('Y-m-d H:i',$row['cTime']);?></span></td>
                    </tr>
                <?php endforeach;?>

            </table>
        <div class="pagebar clear"><?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?></div>
    </div>	
</div>