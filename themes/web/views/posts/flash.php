<?php 
$colid=$colinfo['id'];
$listposts=Posts::listPosts($colid);
if(!empty($listposts)){
foreach($listposts as $ci){?>
        <div class="col-md-2 col-xs-2">
            <a href="<?php echo Yii::app()->createUrl('posts/show',array('id'=>$ci['id']));?>">
            <?php if($ci['attachid']!=''){?>
            <?php $attachinfo=  Attachments::getOne($ci['attachid']);if($attachinfo){?>
            <?php echo '<img src="'.zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],'origin',$attachinfo['classify']).'" alt="'.$ci['title'].'的封面" title="'.$ci['title'].'" class="img-responsive thumbnail"/>';?>            
            <?php }else{?>
            <p><img src="<?php echo zmf::noImg('url');?>" class="thumbnail img-responsive"/></p>
            <?php }?>
            <?php }else{?>
            <p><img src="<?php echo zmf::noImg('url');?>" class="thumbnail img-responsive"/></p>
            <?php }?>
            </a>
            <p>
             <?php echo CHtml::link(zmf::subStr($ci['title'], 15), array('posts/show', 'id' => $ci['id'])); ?>   
            </p>        
        </div>
 <?php }}?>