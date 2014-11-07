<div class="w_960 content">
      <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <?php echo CHtml::link('讲师',array('lecturer/index'));?>&gt; 讲师列表</span></div>
      <!--条件筛选开始-->
      <div class="designer">
          <!--条件筛选 开始-->
          <div class="screening" id="Div1">
              <div class="bd" id="Div2">
                  <ul>
                      <li class="item">
                          <dl class="clearfix">
                              <dt><s class="s"></s>所在区域：</dt>

                              <dd>
                                  <a href="#" class="select fl">不限</a>
                                  <div class="txt">
                                      <a href="#">北京</a>
                                  </div>
                                  <div style="display: block;" onclick="moreExpandValue(this)" class="s-option">
                                      <img src="<?php echo Yii::app()->theme->baseUrl;?>/images/search_more.jpg" /><!--向下箭头-->
                                  </div>
                                  <div style="display: none;" onclick="lessExpandValue(this)" class="s-option">
                                      <img src="<?php echo Yii::app()->theme->baseUrl;?>/images/search_less.jpg" /><!--向上箭头-->
                                  </div>
                              </dd>
                          </dl>
                      </li>
                      <li class="item">
                          <dl class="clearfix">
                              <dt><s class="s"></s>认证级别：</dt>
                              <dd><a href="#" class="select fl">不限</a>
                                  <div class="txt">
                                      <a href="#">金牌讲师</a><a href="#">银牌讲师</a><a href="#">铜牌讲师</a>
                                  </div>
                              </dd>
                          </dl>
                      </li>
                  </ul>
              </div>
          </div>
          <!--条件筛选 结束-->

      </div>
      <!--条件筛选结束-->
      <div class="blank10">
      </div>
      <div class="grid_01 clearfix">
          <div class="col_main">
              <div class="main_wrap">
                  <!--排序选项-->
                  <div class="mall_filter clearfix">
                      <div class="px">
                          排序：
                          <?php echo CHtml::link('默认',array('lecturer/index','order'=>'new'),array('class'=>'po '.(($_GET['order']=='' || $_GET['order']=='new') ? 'select' : '')));?>
                          <?php echo CHtml::link('人气<s class="s jiang"></s>',array('lecturer/index','order'=>'top'),array('class'=>'po '.(($_GET['order']=='top') ? 'select' : '')));?>
                          <?php echo CHtml::link('作品数量<s class="s jiang"></s>',array('lecturer/index','order'=>'more'),array('class'=>'po '.(($_GET['order']=='more') ? 'select' : '')));?>
                      </div>
                  </div>
                  <!--排序选项结束-->
                  <!--数据显示开始-->
                  <div class="designer_list">
                      <!--数据循环显示，每页10条数据-->
                      <ul id="hoverList">
                          <!--第一条数据-->
                          <?php if(!empty($posts)){foreach($posts as $post){$this->renderPartial('_view',array('data'=>$post));}}?>
                          <!--第一条数据结束-->                          
                      </ul>
                      <!--数据循环结束-->
                      <!--分页-->
                      <div class="pageNavigation" style="margin: 25px 0;">
                          <div id="pagebar" class="pageNavigation"><?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?></div>
                      </div>
                  </div>
                  <!--数据显示结束-->
              </div>
          </div>
          <!--右侧排行榜-->
          <div class="col_sub">
              <a href="#" class="designer_ruzhu" title="讲师入驻">讲师入驻</a>
              <!--人气排行榜-->
              <div class="tab_module">
                  <div class="hd">
                      <ul class="clearfix tab-hd">
                          <li class="select"><a href="#">人气讲师排行</a><s class="s1"></s><s class="s2"></s></li>
                      </ul>
                  </div>
                  <div class="bd designer_sub_list">
                      <!--人气排行榜数据循环开始，一共10条数据-->
                      <ul id="mulitline1">
                          <!--第一条数据-->
                          <?php if(!empty($tops)){?>
                          <?php foreach($tops as $top){?>
                          <li class="item">
                            <span class="pic"><?php echo CHtml::link(zmf::avatar($top['uid'],'big'),array('lecturer/view','id'=>$top['id']),array('target'=>'_blank'));?></span> <span class="txt"><p><?php echo CHtml::link($top['truename'],array('lecturer/view','id'=>$top['id']),array('target'=>'_blank'));?></p><p>作品：<em class="green">16</em></p><p>人气：<em class="red"><?php echo $top['hits'];?></em></p></span>
                          </li>
                          <?php }?>
                          <?php }?>
                          <!--第一条数据结束--> 
                      </ul>
                      <!--人气排行榜数据循环结束-->
                  </div>
              </div>
              <!--新设计师排行榜-->             
          </div>
      </div>
</div>