<div class="w_960 content">
  <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <a href="#">装修公司 </a>&gt; 栏目首页</span></div>


  <!--条件筛选开始-->
  <div class="designer">
      <div class="screening" id="Div1">
          <div class="bd" id="Div2">
              <ul>
                  <li class="item">
                      <dl class="clearfix">
                          <dt><s class="s"></s>所在区域：</dt>
                          <dd><a href="#" class="select fl">不限</a>
                              <div class="txt">
                                  <a href="#">北京</a>
                              </div>
                              <div style="display: block;" onclick="moreExpandValue(this)" class="s-option">
                                  <img src="Images/search_more.jpg" /><!--向下箭头-->
                              </div>
                              <div style="display: none;" onclick="lessExpandValue(this)" class="s-option">
                                  <img src="Images/search_less.jpg" /><!--向上箭头-->
                              </div>
                          </dd>
                      </dl>
                  </li>
                  <li class="item">
                      <dl class="clearfix">
                          <dt><s class="s"></s>主营产品：</dt>
                          <dd style="float: left;"><a href="#" class="select fl">不限</a>
                              <div class="txt">
                                  <a href="#">保健品</a>
                              </div>

                          </dd>
                      </dl>

                  </li>
                  <li class="item">
                      <dl class="clearfix">
                          <dt><s class="s"></s>信用等级：</dt>
                          <dd><a href="#" class="select fl">不限</a>
                              <div class="txt">
                                  <a href="#">A</a><a href="#">AA</a><a href="#">AAA</a>
                              </div>

                          </dd>
                      </dl>
                  </li>


              </ul>
          </div>
      </div>

  </div>
	  <!--条件筛选结束-->
	  <!--显示项列表开始-->
	  <!--循环显示，每次10条数据-->
	  <?php if(!empty($posts)){foreach($posts as $post){$this->renderPartial('_view',array('data'=>$post));}}?>
      <!--循环显示，每次10条数据结束-->
      <!--显示项列表结束-->
      <!--分页按钮开始-->
      <div class="pageNavigation">
          <div id="pagebar" class="pageNavigation"><?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?></div>
      </div>
      <!--分页按钮结束-->
      <!--广告-->
      <div class="banner">
          <a href="#" target="_blank">
              <img alt="" src="Images/zxgsBanner.jpg" /></a>
      </div>
  </div>