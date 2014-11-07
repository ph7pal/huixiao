<div class="w_960 content">
  <div class="position">
    <s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt;与【<?php echo $keyword;?>】相关的文章</span>
  </div>
  <div class="newn_css clearfix">
    <div class="newn_css01">
        <div class="newn_css12 clearfix">
            <div id="cntR" class="clearfix">
                <div id="NewsTop">

                    <div id="NewsTop_cnt" class="clearfix">
                        <div class="newn_css13">
                            <ul style="width: 700px;" class="clearfix">
                                <!--数据循环开始，一共25条数据-->
                                <?php foreach($posts as $row):?> 
                                <li>
                                  <font><?php echo date('Y-m-d H:i',$row['cTime']);?></font>
                                  ·<?php $_colname=  Columns::getOne($row['colid'],'title');
                            echo '[ '.CHtml::link($_colname,array('posts/index','colid'=>$row['colid'])).' ]'.' '.CHtml::link($row['title'],array('posts/show','id'=>$row['id']),array('class'=>'title'));
                            ?></li> 
                                <?php endforeach;?>                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clear"></div>
            <!--分页-->
            <div class="pageNavigation" style="margin: 25px 0;">
                <div class="pagebar clear"><?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?></div>
            </div>
        </div>
    </div>    
  </div>  
</div>