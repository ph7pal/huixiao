<div class="w_960 content b_search big_mod clearfix">
    <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<?php echo CHtml::link('首页',zmf::config('baseurl'));?>&gt; <?php echo CHtml::link('产品列表',array('goods/index'));?>&gt; 产品展示</span></div>
    <!--筛选条件开始-->
    <div class="my_shop ">
        <div class="blank10"></div>
        <div class="redNav yahei">
            <div class="right" style="left: 10px; width: 900px;">当前共有产品 <span class="bigFont"><?php echo $pages->itemCount;?></span> 款<?php if(Yii::app()->user->isGuest){echo CHtml::link('我要发布产品',array('site/login'),array('class'=>'link'));}?></div>
            <span class="rc-l"></span>
            <span class="rc-r"></span>
        </div>
        <div class="screening" id="screening">
            <div class="bd" id="bd">
                <ul>
                    <li class="item">
                        <dl class="clearfix">
                            <dt><s class="s"></s>功能种类：</dt>
                            <dd style="float: left;">
                              <?php echo zmf::url(array('title'=>'不限','main'=>'goods/index','class'=>'fl'.(!$selectedTags ? ' select':''),'localarea'=>$localarea,'uid'=>$uid));?>
                                <div class="txt">
                                    <?php if(!empty($tags)){?>                  
                                    <?php foreach($tags as $tagid=>$tagtitle){?>
                                    <?php echo zmf::url(array('title'=>$tagtitle,'main'=>'goods/index','localarea'=>$localarea,'class'=>($selectedTags==$tagid) ? 'select' : '','tagid'=>$tagid,'uid'=>$uid));?>
                                    <?php }?>
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
                            <dt><s class="s"></s>招商区域：</dt>
                            <dd><?php echo zmf::url(array('title'=>'不限','main'=>'goods/index','class'=>'fl'.(!$localarea ? ' select':''),'tagid'=>$selectedTags,'uid'=>$uid));?>
                              <div class="txt">
                                <?php foreach($areas as $localid=>$areaname){?>
                                  <?php echo zmf::url(array('title'=>$areaname,'main'=>'goods/index','localarea'=>$localid,'class'=>($localarea==$localid) ? 'select' : '','tagid'=>$selectedTags,'uid'=>$uid));?>
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
                </ul>
            </div>
        </div>
    </div>
    <!--筛选条件结束-->

    <!--left start 左侧商品显示-->
    <div class="ly_lt">
        <!--列表选项 start-->
        <div class="b_bar">
            <div class="view">
                <a href="javascript:void(0)" class="big_view">大图</a>
                <a href="javascript:void(0)" class="list_view">列表</a>
            </div>
        </div>
        <div class="b_pade">

        </div>
        <!--列表选项 end-->
        <!--产品列表 start-->

        <div class="b_result">
            <!-- 产品信息 start-->
            <!--数据循环开始 一共16条数据-->
            <?php if(!empty($posts)){foreach($posts as $post){$this->renderPartial('_view',array('data'=>$post));}}?>
            <!--数据循环结束 一共16条数据-->
            <div style="clear: both"></div>
            <!-- 产品信息 end -->
            <!--数据显示分页开始-->
            <div class="pageNavigation">
                <div class="pagebar"><?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?></div>
            </div>
            <!--数据显示分页结束-->
        </div>


        <!-- 产品列表 end -->
        <!--求购 start-->
        <div class="redNav yahei" style="width: 960px; position: relative">
            <div class="right" style="left: 10px; width: 900px; font-size: 20px">没有找到您需要的商品?<a target="_blank" href="javascript:void(0)" class="link" onclick="qiugou();">发布求购产品</a></div>
            <span class="rc-l"></span>
            <span class="rc-r"></span>
            <div class="buy_box">
                <?php $this->renderPartial('//message/_form_goodslist', array('model'=>$model)); ?>
            </div>
        </div>
        <!--求购 end-->
    </div>
    <!--left end-->

    <!--right start-->
    <!--商品推荐开始-->
    <div class="ly_rt">

        <div class="p_rec">
            <div class="rec_tit">商品推荐</div>
            <div class="list_box">
                <!--商品推荐循环开始， 一共10条数据-->
                <!--第一条数据 开始-->
                <?php if(!empty($tops)){?>
                <?php foreach($tops as $top){?>
                <dl>
                    <dt class="pic">
                    <?php echo CHtml::link(CHtml::image($top['faceurl'],CHtml::encode($top['title']),array('width'=>'65')),array('goods/view','id'=>$top['id']),array('target'=>'_blank')); ?>
                    </dt>
                    <dd class="p_info"><?php echo CHtml::link($top['title'],array('goods/view','id'=>$top['id']),array('target'=>'_blank')); ?></dd>
                </dl>
                <?php }?>
                <?php }?>
                <!--第一条数据 结束-->
                <!--商品推荐循环结束， 一共10条数据-->
            </div>
        </div>


    </div>
    <!--商品推荐结束-->
    <!--right end-->
</div>
<!-- content end-->