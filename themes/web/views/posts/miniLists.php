<?php 
if($colinfo){
$listNum=isset($listNum)?$listNum:$colinfo['listnum'];
$colitems = Posts::allPosts(array('colid'=>$colinfo['id'],'condition'=>$colinfo['listcondition'],'top'=>zmf::config('orderByTop')),$listNum); 
if($this->inMobile){
    $list_colnum=12;
}else{
  $colnum=isset($colnum)?$colnum:3;
  $list_colnum=12/$colnum;  
}
$topFaceNum=isset($topFaceNum)?$topFaceNum:0;
?>
<?php if(!$nottable){?>
<table class="table table-hover table-condensed myborder">
    <?php if (!empty($colitems)) {
        foreach ($colitems as $key=>$ci) { ?> 
    <?php if($key<$topFaceNum){?>
    <tr>
        <td>
            <?php if($ci['attachid']!=''){?>
            <?php $attachinfo=  Attachments::getOne($ci['attachid']);if($attachinfo){?>
            <?php echo '<img src="'.zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],'200',$attachinfo['classify']).'" alt="'.$ci['title'].'的封面" title="'.$ci['title'].'" class="img-responsive"/>';?>            
            <?php }else{?>
            <img src="<?php echo zmf::noImg('url');?>" class="img-responsive"/>
            <?php }?>
            <?php }else{?>
            <img src="<?php echo zmf::noImg('url');?>" class="img-responsive"/>
            <?php }?>
            <?php echo CHtml::link(zmf::subStr($ci['title'], 10), array('posts/show', 'id' => $ci['id']),array('class'=>'toplink')); ?>
        </td>
    </tr>
    <?php }else{?>
    <tr>
        <td>
        <?php echo CHtml::link(zmf::subStr($ci['title'], 10), array('posts/show', 'id' => $ci['id'])); ?>
            <?php if(!$nodate){?>
            <span class="date"><?php echo date('m-d', $ci['cTime']); ?></span>
            <?php }?>
        </td>
    </tr>
    <?php }?>
    <?php }} ?>
</table>   
<?php }else{?>
    <?php if (!empty($colitems)) {
        foreach ($colitems as $key=>$ci) { ?>
        <div class="col-md-<?php echo $list_colnum;?> col-xs-<?php echo $list_colnum;?>">
            <p>
            	<?php echo CHtml::link(zmf::subStr($ci['title'], 10), array('posts/show', 'id' => $ci['id'])); ?>
            	<?php if($key<$topHotNum){?>
            		<span style="color:red;font-weight:bold;">HOT</span>
            	<?php }?>
            <?php if(!$nodate){?>
            <span class="pull-right date"><?php echo date('m-d', $ci['cTime']); ?></span>
            <?php }?>
            </p>            
        </div>    
    <?php }} ?>
<?php }} ?>