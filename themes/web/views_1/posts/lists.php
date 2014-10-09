<div class="wrap clear">
    <?php $this->renderPartial('aside',array('colid'=>$info['id']));?>
    <div class="mainBox">	
      
      <?php if(!in_array('tags',$fieldsArr)){?>
      <?php $this->renderPartial('bread',array('info'=>$info));?>
      <?php }else{?>      
      <div class="tags-holder">
        <div class="col-xs-1 tag-title">分类：</div>
        <div class="col-xs-11 no-padding">
          <ul class="tag-area">
            <?php if(!empty($tags)){?>                  
              <?php $limit=20;$key=0;$b_count=count($tags); foreach($tags as $tagid=>$tagtitle){?>
                <?php if($key<$limit){?>
                  <?php if(in_array($tagid,$selectedTags)){?>
                  <li><?php echo $tagtitle;?></li>
                  <?php }else{?>
                  <li><?php echo CHtml::link($tagtitle,array('posts/index','colid'=>$_GET['colid'],'tagid'=>$tagid));?></li>
                  <?php }?>
                <?php }else{?>
                  <?php if(in_array($tagid,$selectedTags)){?>
                  <li><?php echo $tagtitle;?></li>
                  <?php }else{?>
                  <li class="closeinfo"><?php echo CHtml::link($tagtitle,array('posts/index','colid'=>$_GET['colid'],'tagid'=>$tagid));?></li>
                  <?php }?>
                <?php }?>
                <?php if(($key+1)==$b_count && $b_count>$limit){?>
                  <span class="p1 pointer" onclick="extags();"><a href="javascript:;"><span id="e_pointer" class='transformFont'><span class="glyphicon glyphicon-chevron-down"></span> 显示全部</span></a></span>
                 <?php }?>
              <?php $key++;}?>
            <?php }?>
          </ul>
        </div>
      </div>
      <div class="clearfix"></div>
      <?php }?>
            <table class="table table-hover">
                <?php foreach($posts as $row):?> 
                    <tr>                        
                        <td>
                            <?php 
                            //$_uname=Users::getUserInfo($row['uid'],'truename');
                            $_colname=  Columns::getOne($row['colid'],'title');
                            echo '[ '.CHtml::link($_colname,array('posts/index','colid'=>$row['colid'])).' ]'.' '.CHtml::link($row['title'],array('posts/show','id'=>$row['id']),array('class'=>'title'));
                            ?>
                            <span class="date"><?php echo date('Y-m-d H:i',$row['cTime']);?></span>
                        </td>
                    </tr>
                <?php endforeach;?>

            </table>
        <div class="pagebar clear"><?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?></div>
    </div>	
</div>