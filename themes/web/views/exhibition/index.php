<div class="w_960 content">
  <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<?php echo CHtml::link('首页',zmf::config('baseurl'));?>&gt; <?php echo CHtml::link('行业展会',array('exhibition/index'));?>&gt; 行业展会列表</span></div>


  <!--条件筛选开始-->
  <div class="designer">
      <div class="screening" id="Div1">
          <div class="bd" id="Div2">
              <ul>
                  <li class="item">
                      <dl class="clearfix">
                          <dt><s class="s"></s>所在区域：</dt>
                          <dd><?php echo CHtml::link('不限',array('exhibition/index'),array('class'=>(!$localarea) ? 'select fl':'fl'));?>
                              <div class="txt">
                                <?php foreach($areas as $localid=>$areaname){?>
                                  <?php echo CHtml::link($areaname,array('exhibition/index','localarea'=>$localid),array('class'=>($localarea==$localid)?'select':''));?>
                                <?php }?>
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
                          <dt><s class="s"></s>信用等级：</dt>
                          <dd><?php echo CHtml::link('不限',array('exhibition/index'),array('class'=>'fl'));?>
                                  <div class="txt">
                                    <?php if(!empty($medals)){foreach($medals as $mid=>$medal){?>
                                      <?php echo CHtml::link($medal,array('exhibition/index','medal'=>$mid),array('class'=>($medalid==$mid) ? 'select' : ''));?>
                                    <?php }}?>
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
      <div class="banner"></div>
  </div>