<div class="w_960 content b_search big_mod clearfix">
    <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <?php echo CHtml::link('产品列表',array('goods/index'));?>&gt; 产品展示</span></div>
    <!--筛选条件开始-->
    <div class="my_shop ">
        <div class="blank10"></div>
        <!--div class="redNav yahei">
            <div class="right"><a target="_blank" href="#" class="link">我要发布产品</a></div>
            <span class="rc-l"></span>
            <span class="rc-r"></span>
        </div-->
        <div class="screening" id="screening">
            <div class="bd" id="bd">
                <ul>
                    <li class="item">
                        <dl class="clearfix">
                            <dt><s class="s"></s>产品筛选：</dt>
                            <dd style="float: left;">
                              <?php echo CHtml::link('不限',array('goods/index'),array('class'=>'select fl'));?>      
                                <div class="txt">
<?php if(!empty($tags)){?>                  
  <?php foreach($tags as $tagid=>$tagtitle){?>
  <?php echo CHtml::link($tagtitle,array('goods/index','tagid'=>$tagid));?>      
  <?php }?>
<?php }?>
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

        <!--div class="redNav yahei" style="width: 960px; position: relative">

            <div class="right" style="left: 10px; width: 900px; font-size: 20px">没有找到您需要的商品?<a target="_blank" href="javascript:void(0)" class="link" onclick="qiugou();">发布求购产品</a></div>
            <span class="rc-l"></span>
            <span class="rc-r"></span>
            <div class="buy_box">
                <form>
                    <div class="blank10"></div>
                    <span class="tit">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</span>
                    <input type="text" class="name" value="请输入您的姓名" /><br />
                    <span class="tit">联系电话：</span>
                    <input type="text" class="phone" value="请输入您的联系电话" /><br />
                    <span class="tit">代理区域：</span>
                    <input type="text" class="add" value="请输入代理区域" /><br />
                    <span class="tit">团队人数：</span>
                    <input type="text" class="num" value="请输入团队人数" /><br />
                    <span class="tit">想代理的产品要求：</span>
                    <textarea rows="3" cols="20" class="pro_info" style="margin-left: 60px">请输入您想代理的产品要求</textarea><br />

                    <input type="button" class="sub_btn" value="提交" />
                    <input type="button" class="res_btn" value="取消" onclick="quxiao()" />
                </form>
            </div>
        </div-->
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