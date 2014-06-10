<?php 
if($colinfo){
$colid=$colinfo['id'];
$listposts=Posts::listPosts($colid);?>
<div class="logobanner">
<?php if(!empty($listposts)){
foreach($listposts as $key=>$ci){?>
<div class="bd">
    <ul>
        <li>
            <a href="<?php echo Yii::app()->createUrl('posts/show',array('id'=>$ci['id']));?>">
            <?php if($ci['attachid']!=''){?>
            <?php $attachinfo=  Attachments::getOne($ci['attachid']);if($attachinfo){?>
            <?php echo '<img src="'.zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],'200',$attachinfo['classify']).'" alt="'.$ci['title'].'的封面" title="'.$ci['title'].'" class="img-responsive"/>';?>
            <?php }?>
            <?php }?>
            </a>
        </li>        
    </ul>
</div>
<?php }}?>
</div>
<?php }?>