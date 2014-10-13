<div class="w_960 content">
      <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <a href="#">设计师 </a>&gt; 栏目首页</span></div>
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
                          排序：<a href="#" class="po select">默认</a><a href="#" class="po ">人气<s class="s jiang"></s></a><a href="#;" class="po ">作品数量<s class="s jiang"></s></a>
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
                          <li class="select"><a href="#">今日人气讲师排行</a><s class="s1"></s><s class="s2"></s></li>
                      </ul>
                  </div>
                  <div class="bd designer_sub_list">
                      <!--人气排行榜数据循环开始，一共10条数据-->
                      <ul id="mulitline1">
                          <!--第一条数据-->
                          <li class="item"><span class="pic"><a href="#">
                              <img src="UpFile/singlefile/28fbea05-5a2e-4d18-a43c-d2cdb195c68c.jpg" alt="屈仁强" /></a></span> <span class="txt">
                                  <p>
                                      <a href=" /shejishi/sjs_408.html ">屈仁强</a> - 男
                                  </p>
                                  <p>
                                      作品：<em class="green">16</em>
                                  </p>
                                  <p>
                                      人气：<em class="red">4309</em>
                                  </p>
                                  <p>
                                      <a href=" #"
                                          class="detailed" target="_blank">详细</a><a href=" # "
                                              class="appointment
"
                                              target="_blank">预约</a>
                                  </p>
                              </span></li>
                          <!--第一条数据结束--> 
                      </ul>
                      <!--人气排行榜数据循环结束-->
                  </div>
              </div>
              <!--新设计师排行榜-->             
          </div>
      </div>
</div>