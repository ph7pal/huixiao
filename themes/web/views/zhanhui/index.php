<div class="w_960 content">
  <div class="position">
    <s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <a href="#">团购活动 </a>&gt; 栏目首页</span>
  </div>

  <div class="tuangou clearfix">
    <div class="tg_nav">
      <!--展会活动TAB按钮-->
      <ul class="clearfix">
        <li class="item "><?php echo CHtml::link('报名中的展会',array('zhanhui/index','type'=>'on'),array('class'=>($type=='on')? 'select':''));?></li>
        <li class="item "><?php echo CHtml::link('已结束的展会',array('zhanhui/index','type'=>'over'),array('class'=>($type=='over')? 'select':''));?></li>

      </ul>
    </div>
    <!--报名中的展会 开始-->
    <div class="tg_list tg_list1">
      <!--数据循环显示部分，一页共有10条数据 开始-->
      <!--数据显示第一条数据开始-->
      <?php if(!empty($posts)){foreach($posts as $post){$this->renderPartial('_view',array('data'=>$post));}}?>
      <!--数据显示第一条数据结束-->
    </div>
    <!--数据循环显示部分，一页共有10条数据 结束-->
    <!--数据显示分页开始-->
    <div class="pageNavigation">
      <div id="pagebar" class="pageNavigation"><?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?></div>
    </div>
    <!--数据显示分页结束-->
  </div>
  <!--报名中的展会 结束-->
</div>