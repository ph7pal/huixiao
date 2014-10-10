<!---文章内容页-->
<div class="w_960 content">
    <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <a href="#">行业资讯 </a>&gt; <a href="#">行业动态 </a>&gt; 床垫企业推智能床垫 帮助改善睡眠</span></div>
    <div class="zzyHTML">
       
    </div>
    <div class="grid_04 xuetang clearfix">
        <!--右侧文章内容显示部分开始-->
        <div class="col_main">
            <div class="main_wrap">
                <div class="main_article clearfix">
                    <!--文章标题 开始-->
                    <h2>
                        <font color="#000000"><?php echo $page['title'];?></font></h2>
                    <!--文章标题 结束-->
                    <!--文章头部 开始-->
                    <div class="article_info">
                      <p class="info">
                      <?php echo date('Y-m-d',$page['cTime']);?>
                      <?php if($page['author']!=''){?>
                      <em>作者：</em><?php echo $page['author'];?><?php echo zmf::creditIcon($page['uid']);?>
                      <?php }else{?>
                      <em>作者：</em><?php $uname=  Users::getUserInfo($page['uid'],'truename'); echo CHtml::link($uname,array('mobile/index','uid'=>$page['uid']));?><?php echo zmf::creditIcon($page['uid']);?>
                      <?php }?>
                      <?php if($page['copy_url']!='' && $page['copy_from']!=''){?>
                      <?php if($page['copy_url']!=''){?>
                          <em>来源：</em><a href="<?php if($page['copy_url']!=''){echo $page['copy_url'];}?>" target="_blank"><?php if($page['copy_from']!=''){?><?php echo $page['copy_from'];?><?php }?></a>
                      <?php }else{?>
                          <em>来源：</em><?php echo $page['copy_from'];?>
                      <?php }}?>
                      <em>|</em> <a href="#woyaopl">我要评论</a>
                      </p> 
                    </div>
                    <!--文章头部 结束-->
                    <!--文章内容 开始-->
                    <div class="article_content">
                      <?php if($page['second_title']!=''){?>
                      <div class="daodu">
                      <strong>[导读]</strong><?php echo $page['second_title'];?>
                      </div>
                      <?php }?>
                        <div class="article_c">
                          <p><?php echo zmf::text(array('keyid' => $page['id'],'uid'=>$page['uid']), $page['content'], false);?></p>    
                        </div>
                        <div class="next_prav">
                            <span class="prev">
                                上一篇：
                                <?php if(!empty($preInfo)){?>
                                <?php echo CHtml::link($preInfo['title'],array('posts/show','id'=>$preInfo['id']));?>
                                <?php }else{?>
                                没有了
                                <?php }?>     
                            </span>
                            <span class="next">
                              下一篇：
                                <?php if(!empty($nextInfo)){?>
                                <?php echo CHtml::link($nextInfo['title'],array('posts/show','id'=>$nextInfo['id']));?>
                                <?php }else{?>
                                没有了
                                <?php }?>
                            </span>
                        </div>
                    </div>
                    <!--文章内容 结束-->
                </div>
                <!--文章评论 开始-->
                <div class="comment_m">
                    <div class="hd">
                    </div>
                    <div class="bd">
                        <div class="comment_list">
                            <?php if($page['reply_allow']){ $this->renderPartial('/common/comments',array('keyid'=>$page['id'],'type'=>'posts','coms'=>$coms,'pages'=>$pages));}?>
                        </div>
                        <!--发表评论 开始-->
                        <div class="comment_form">
                            <strong>发表评论</strong>                            
                        </div>
                        <!--发表评论 结束-->
                    </div>
                    <!--文章评论 结束-->
                </div>
            </div>
        </div>
        <!--右侧文章内容显示部分结束-->
        <!--左侧排行榜显示部分开始-->
        <div class="col_sub">
            <!--精彩推荐 开始-->
            <div class="module_05">
                <div class="hd">
                    精彩推荐
                </div>
                <div class="bd imgList">
                    <div id="marqueediv1">
                        <!--图片循环滚动开始，一共12条数据-->

                        <ul class="clearfix">
                            <!--第一条数据开始-->
                            <li class="item"><a href="#" target="_blank">
                                <img src="UpFile/singlefile/cd87bf84-3ccd-4d15-997c-77d0dcf3fb64.jpg" alt="金煌装饰“金九银十”全装大师系..." />
                                <span class="title">金煌装饰“金九银十”全装大师系...</span></a></li>
                            <!--第一条数据结束-->                            
                        </ul>
                        <!--图片循环滚动结束，一共12条数据-->
                    </div>
                </div>
            </div>
            <!--阅读排行榜 开始-->
            <div class="module_05" id="TabAdS01">
                <div class="hd">
                    装修日记阅读排行<div class="tab">
                    </div>
                </div>
                <!--阅读排行内容开始-->
                <div class="bd paixuList">
                    <!--数据循环开始，一共10条数据-->
                    <ul class="tab-cont">
                        <li class="item"><s class="s s_red">1</s><a href="#" target="_blank">华润二十四城</a><span
                            class="num">1818</span></li>
                    </ul>
                    <!--数据循环结束，一共10条数据-->
                </div>
                <!--阅读排行内容结束-->
            </div>
            <!--阅读排行榜 结束-->
            <div class="blank10">
            </div>
            <!--最新装修招标 开始-->
            <div class="module_05">
                <div class="hd">
                    最新装修招标<div class="more">
                        <a href="#" target="_blank">门面</a> <a href="#" target="_blank">别墅</a> <a href="/zhaobiao/index.html?fwlx=18" target="_blank">公寓</a>
                    </div>
                </div>
                <!--招标新闻内容开始-->
                <div class="bd txtList">
                    <!--数据循环开始-->
                    <ul>
                        <li class="item"><a href="#" target="_blank">渝中区瑞安工作室公共空间200㎡公装招标</a></li>
                    </ul>
                    <!--数据循环结束-->
                </div>
                <!--招标新闻内容结束-->
            </div>
            <!--最新装修招标 开始-->
            <div class="blank10">
            </div>
            <!--案例精选 开始-->
            <div class="module_05">
                <div class="hd">
                    案例精选<div class="more">
                        <a href="/anli/index.html?lx=1&fg=23" target="_blank">中式</a> <a href="/anli/index.html?lx=1&fg=24" target="_blank">欧式古典</a> <a href="/anli/index.html?lx=1&fg=25" target="_blank">现代简约</a>
                    </div>
                </div>
                <div class="bd imgList">
                    <!--数据循环开始，一共10条数据-->
                    <ul class="clearfix">
                        <!--第一条数据开始-->
                        <li class="item"><a href="#" target="_blank">
                            <img src="UpFile/singlefile/002b90d2-814f-460d-9594-8ac2fa05392e.jpg" width="120" height="78" alt="" /><span class="title">蓝湖香颂  新中式风格</span></a></li>
                        <!--第一条数据结束-->                        
                    </ul>
                </div>
            </div>
            <!--案例精选 结束-->
        </div>
        <!--左侧排行榜显示部分结束-->
    </div>
</div>