<div class="w_960 content">
<div class="position">
    <s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <a href="#">新闻列表 </a>&gt; 聚信美第二届实惠要逆天</span>
</div>
<!--主要内容 开始-->
<div class="newn_css clearfix">
    <!--左侧数据显示 开始-->
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
                                  ·<?php                             $_colname=  Columns::getOne($row['colid'],'title');
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
    <!--左侧数据显示 结束-->
    <!--右侧列表 开始-->
    <div class="newn_css08">
        <div class="newn_css10" style="width: 210px;">
            <div class="xuetang_subNav">
                <div class="hd">
                    栏目导航
                </div>
                <div class="bd">
                    <ul id="list_nav">                        
                      <li><s class="s"></s><a href="#" style="font-size: 14px;">精英访谈</a></li>
                      <li><s class="s"></s><a href="#">记者观察</a></li>
                      <li><s class="s"></s><a href="#">企业动态</a></li>
                      <li><s class="s"></s><a href="#">家居卖场</a></li>
                      <li><s class="s"></s><a href="#">行业动态</a></li>                            
                    </ul>
                </div>

            </div>
        </div>
        <!--最新加入公司 开始-->
        <div class="newn_css09">
            <h3><span><a href="h#" target="_blank">更多>></a></span>最新加入公司</h3>
            <ul>
                <!--最新加入公司数据循环，一共8条数据 开始-->
                <li>·<a href="#" target="_blank" title="北京百德汇科技有限公司">北京百德汇科技有限公司</a></li>
                <!--最新加入公司数据循环，一共8条数据结束-->
            </ul>
            <div style="clear: both;"></div>
        </div>
        <!--最新加入公司 结束-->
        <!--最新加入产品 开始-->
        <div class="newn_css09">
            <h3><span><a href="#" target="_blank">更多>></a></span>最新加入产品</h3>
            <ul>
                <!--最新加入公司数据循环，一共8条数据 开始-->
                <li>·<a href="#" target="_blank" title="“养生之王”--破壁灵芝孢子粉">“养生之王”--破壁灵芝孢子粉</a></li>
                <!--最新加入公司数据循环，一共8条数据结束-->
            </ul>
            <div style="clear: both;"></div>
        </div>
        <!--最新加入产品 结束-->
        <!--最新展会信息 开始-->
        <div class="newn_css09">
            <h3><span><a href="#" target="_blank">更多>></a></span>最新展会信息</h3>
            <ul>
                <!--最新加入公司数据循环，一共8条数据 开始-->
                <li>·<a href="#" target="_blank" title="2015年第18届居家环境健康展空气净化、净水设备展览会">2015年第18届居家环境健康展空气净化、净水设备展览会</a></li>
                <!--最新加入公司数据循环，一共8条数据结束-->
            </ul>
            <div style="clear: both;"></div>
        </div>
        <!--最新展会信息 结束-->
        <div style="clear: both;"></div>
    </div>
    <!--右侧列表 结束-->
    <!--  <div style="clear: both;"></div>-->
</div>

<div style="height: 10px; width: 960px; background-color: White; margin: 0 auto"></div>
<!--主要内容 结束-->
</div>