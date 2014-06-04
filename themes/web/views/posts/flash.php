<?php 
if($colinfo){
$colid=$colinfo['id'];
$listposts=Posts::listPosts($colid);
$facenum=isset($facenum)?$facenum:8;
if($this->inMobile){
    $colnum=12;
}
if(!empty($listposts)){
foreach($listposts as $key=>$ci){?>
<?php if($key<$facenum){?>
        <div class="col-md-<?php echo $colnum;?> col-xs-<?php echo $colnum;?>">
            <a href="<?php echo Yii::app()->createUrl('posts/show',array('id'=>$ci['id']));?>">
            <?php if($ci['attachid']!=''){?>
            <?php $attachinfo=  Attachments::getOne($ci['attachid']);if($attachinfo){?>
            <?php echo '<img src="'.zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],'200',$attachinfo['classify']).'" alt="'.$ci['title'].'的封面" title="'.$ci['title'].'" class="img-responsive"/>';?>            
            <?php }else{?>
            <p><img src="<?php echo zmf::noImg('url');?>" class="img-responsive"/></p>
            <?php }?>
            <?php }else{?>
            <p><img src="<?php echo zmf::noImg('url');?>" class="img-responsive"/></p>
            <?php }?>
            </a>
            <p>
             <?php echo CHtml::link(zmf::subStr($ci['title'], 15), array('posts/show', 'id' => $ci['id'])); ?>   
            </p>        
        </div>
<?php }else{?>
<div class="col-md-4 col-xs-<?php echo $colnum;?>">
    <p><?php echo CHtml::link(zmf::subStr($ci['title'], 15), array('posts/show', 'id' => $ci['id'])); ?></p>
</div>
<?php }?>
<?php }}}?>