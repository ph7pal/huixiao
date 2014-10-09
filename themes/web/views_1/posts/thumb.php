<div class="wrap clear">
    <?php $this->renderPartial('aside',array('colid'=>$info['id']));?>
    <div class="mainBox">	
        <?php $this->renderPartial('bread',array('info'=>$info));?>
                <?php foreach($posts as $row):?> 
                    <div class="col-sm-3 col-md-3 no-padding">                      
                      <?php if($ci['attachid']!=''){?>
                      <?php $attachinfo=  Attachments::getOne($row['attachid']);if($attachinfo){?>
                      <?php echo '<img src="'.zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],'200',$attachinfo['classify']).'" alt="'.$ci['title'].'的封面" title="'.$ci['title'].'" class="img-responsive"/>';?>            
                      <?php }else{?>
                      <img src="<?php echo zmf::noImg('url');?>" class="img-responsive"/>
                      <?php }?>
                      <?php }else{?>
                      <img src="<?php echo zmf::noImg('url');?>" class="img-responsive"/>
                      <?php }?>            
                      <div class="caption">                          
                        <p><?php 
                          echo CHtml::link($row['title'],array('posts/show','id'=>$row['id']),array('class'=>'title'));
                          ?>
                        </p>
                        <p><?php echo date('Y-m-d H:i',$row['cTime']);?></p>
                      </div>                      
                    </div>
                    
                    
                <?php endforeach;?>
        <div class="pagebar clear"><?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?></div>
    </div>	
</div>