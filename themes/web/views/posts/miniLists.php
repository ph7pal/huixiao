<?php 
$colitems = Posts::allPosts(array('colid'=>$colinfo['id'],'condition'=>$colinfo['listcondition'],'top'=>zmf::config('orderByTop')),$colinfo['listnum']); ?>
<?php if(!$nottable){?>
<style>
    .myborder td{
        border-top:none !important;
        border-bottom: 1px solid #dddddd;
    }
</style>
<table class="table table-hover table-condensed myborder">
    <?php if (!empty($colitems)) {
        foreach ($colitems as $ci) { ?>  
    <tr><td>
        <?php echo CHtml::link(zmf::subStr($ci['title'], 10), array('posts/show', 'id' => $ci['id'])); ?>
                <span class="date"><?php echo date('m-d', $ci['cTime']); ?></span>
            </td></tr>
    <?php }} ?>
</table>   
<?php }else{?>
    <?php if (!empty($colitems)) {
        foreach ($colitems as $ci) { ?>
        <div class="col-md-4 col-xs-4">
            <p><?php echo CHtml::link(zmf::subStr($ci['title'], 15), array('posts/show', 'id' => $ci['id'])); ?></p>
        </div>    
    <?php }} ?>

<?php } ?>
