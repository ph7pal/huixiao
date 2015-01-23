<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><?php echo CHtml::encode($this->pageTitle); ?></title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
   <?php if(Yii::app()->getController()->id!='site'){?> 
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/base.css" rel="stylesheet" />
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/hf.css" rel="stylesheet" />
    <?php }?>
 <?php if(Yii::app()->getController()->id=='qiye' || Yii::app()->getController()->id=='exhibition'){?>
    <?php if(Yii::app()->getController()->getAction()->id=='index'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/zxgsList.css" rel="stylesheet" type="text/css" />
    <?php }elseif(Yii::app()->getController()->getAction()->id=='score'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/pinglun.css" rel="stylesheet" type="text/css" />
    <?php }else{?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/zxgsIndex.css" rel="stylesheet" type="text/css" />
    <?php }?>
<?php }elseif(Yii::app()->getController()->id=='lecturer'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/jiangshiList.css" rel="stylesheet" type="text/css" />
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/jiangshiIndex.css" rel="stylesheet" type="text/css" />
<?php }elseif(Yii::app()->getController()->id=='zhanhui'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/zhanhuiList.css" rel="stylesheet" type="text/css" />
     <!--link href="<?php echo Yii::app()->theme->baseUrl ?>/css/jiangshiIndex.css" rel="stylesheet" type="text/css" /-->    
<?php }elseif(Yii::app()->getController()->id=='site'){?>
     <?php if(Yii::app()->getController()->getAction()->id=='login'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/login.css" rel="stylesheet" type="text/css" />
    <?php }elseif(Yii::app()->getController()->getAction()->id=='reg'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/reg.css" rel="stylesheet" type="text/css" />
    <?php }else{?>
     
    <?php }?>
<?php }elseif(Yii::app()->getController()->id=='posts'){?>
     <?php if(in_array(Yii::app()->getController()->getAction()->id,array('index','search'))){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/NewsList.css" rel="stylesheet" type="text/css" />
     <?php }elseif(Yii::app()->getController()->getAction()->id=='show'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/article.css" rel="stylesheet" type="text/css" />
     <?php }?>
<?php }elseif(Yii::app()->getController()->id=='goods'){?>
     <?php if(Yii::app()->getController()->getAction()->id=='index'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/chanpinList.css" rel="stylesheet" type="text/css" />
     <?php }elseif(Yii::app()->getController()->getAction()->id=='view'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/chanpin.css" rel="stylesheet" type="text/css" />
     <?php }?>
<?php }elseif(Yii::app()->getController()->id=='jobs'){?>
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/Job.css" rel="stylesheet" type="text/css" />
<?php }else{?>
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/index.css" rel="stylesheet" type="text/css" />
<?php }?>    
    <?php 
    Yii::app()->clientScript->registerCoreScript('jquery'); 
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/jquery.scrolltotop.js", CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/select.jQuery.js", CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/common.js", CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/chanpin.js", CClientScript::POS_END);    
    Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/jquery.SuperSlide.2.1.1.js", CClientScript::POS_HEAD);
    ?>
  </head>
  <body>
    <div class="bg2013s">        
      <!--头部-->
      <div style="height:30px;">
          <div style="height:30px;width: 960px;margin:0 auto;line-height: 30px;font-size: 14px;">
              <div class="fl">
                  <a href="javascript:;" onclick="alert('请按CTRL+D将本站加入收藏夹')">加入收藏</a>
              </div>  
            <div class="fr" style="float: right;">
            <?php if (!Yii::app()->user->isGuest) { ?>
            <div style="" class="clearfix">
                <span style="">你好:<font style="color: #fb2b21"><?php echo $this->userInfo['truename'];?></font></span>
                <a href="<?php echo Yii::app()->createUrl('user/notice');?>" style="color: #0061da;">
                    提醒<?php if($this->noticeNum>0){echo '(<font color="red">'.$this->noticeNum.'</font>)';}?>
                </a>
                <a href="<?php echo Yii::app()->createUrl('user/index');?>" style="color: #0061da;">【管理中心】</a>
                <a href="<?php echo Yii::app()->createUrl('site/logout');?>" style="color: #0061da;">退出</a>
            </div>
            <?php }?>
          </div>
        </div>
      </div>
      <div class="w_960 header clearfix">            
        <h1 class="logo"><a href="<?php echo zmf::config('baseurl');?>"><img src="<?php echo Yii::app()->theme->baseUrl ?>/images/logo.png" alt="<?php echo zmf::config('sitename');?>" height="90" /></a></h1>
        <div class="searchBar">
          <div class="searchBarBd">
            <p class="txt" >
              <input type="text" id="keyword" class="s_txt" placeholder="请输入关键词"/>
            </p>
            <p class="btn"  >
              <button type="submit" class="s_btn" id="search-btn" >搜索</button>
            </p>
          </div>
          <p class="s_nav clearfix">
            <?php $topskw=  SearchRecords::getTops();if(!empty($topskw)){?>
            <span>热门关键词:</span>
            <?php foreach($topskw as $tpkw){echo CHtml::link($tpkw,array('posts/search','keyword'=>$tpkw),array('class'=>'topkws'));}?>
            <?php }?>
          </p>
        </div>
        <div class="fr" style="margin-right: 20px; float: right;   margin-top: 30px;">
            <?php if (Yii::app()->user->isGuest) { ?>
            <?php echo CHtml::link('',array('site/login'),array('class'=>'loginBtn'));?>
            <?php echo CHtml::link('',array('site/reg'),array('class'=>'zcBtn'));?>
            <?php }?>
        </div>
      </div>
      <div style="clear: both"></div>
      <!--导航条-->
      <div class="channelNav">
        <div class="w_960 channelNavBd">
          <ul>
            <li><a href="<?php echo zmf::config('baseurl');?>">首页</a></li>
            <!--//信用黑名单 信用企业  招商资讯 会销产品 展会档期   行业资讯  优秀讲师 人才招聘-->
            <?php $topcols=Columns::topbarCols();?>          
            <li <?php if(in_array($topcols['heimingdan']['id'],$this->currentCol)){echo 'class="current"';}?>>
              <?php echo CHtml::link($topcols['heimingdan']['title'],$topcols['heimingdan']['url']);?>           
            </li>
            <li <?php if(Yii::app()->getController()->id=='qiye'){?>class="current"<?php }?>><?php echo CHtml::link($topcols['qiye']['title'],$topcols['qiye']['url']);?></li>
            <li <?php if(in_array($topcols['zhaoshang']['id'],$this->currentCol)){echo 'class="current"';}?>>
              <?php echo CHtml::link($topcols['zhaoshang']['title'],$topcols['zhaoshang']['url']);?>           
            </li>
            <li <?php if(Yii::app()->getController()->id=='goods'){?>class="current"<?php }?>><?php echo CHtml::link($topcols['goods']['title'],$topcols['goods']['url']);?></li>
            <li <?php if(Yii::app()->getController()->id=='zhanhui'){?>class="current"<?php }?>><?php echo CHtml::link($topcols['zhanhui']['title'],$topcols['zhanhui']['url']);?></li>
            <li <?php if(in_array($topcols['hangyezixun']['id'],$this->currentCol)){echo 'class="current"';}?>>
              <?php echo CHtml::link($topcols['hangyezixun']['title'],$topcols['hangyezixun']['url']);?>
            </li>            
            <li <?php if(Yii::app()->getController()->id=='lecturer'){?>class="current"<?php }?>><?php echo CHtml::link($topcols['jiangshi']['title'],$topcols['jiangshi']['url']);?></li>
            <li <?php if(Yii::app()->getController()->id=='jobs'){?>class="current"<?php }?>><?php echo CHtml::link($topcols['jobs']['title'],$topcols['jobs']['url']);?></li>
          </ul>
        </div>
      </div>
      <!--导航条ENDing-->
    <?php echo $content; ?>
    <!--底部-->
<!----友情链接----->
<div class="frlink">
  <div style="position: relative; padding-right: 40px;">
    <p class="txt">
    <?php 
    $links=Link::allLinks();
    if(!empty($links)){?>
    <strong>[友链链接]</strong>
    <?php foreach($links as $link){?>
      <a href="<?php echo $link['url'];?>" target="_blank" class="td_linkTatle">
        <?php //if($link['attachid']>0 && $link['imgurl']!=''){?>
        <!--img src="<?php echo $link['imgurl'];?>" class="img-responsive"/-->
        <?php //}else{?>
        <?php echo $link['title'];?>
        <?php //}?>
      </a>   
    <?php }?>
    <?php }?>
    </p>
    <div style="display: block;" onclick="moreExpandValue(this)" class="s-option">
      <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/search_more.jpg" /><!--向下箭头-->
    </div>
    <div style="display: none;" onclick="lessExpandValue(this)" class="s-option">
      <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/search_less.jpg" /><!--向上箭头-->
    </div>
  </div>
</div>
<!--网站底部开始-->
<div class="w_960 footer">
  <p>
    <?php $address=zmf::config('address');if(!empty($address)){ echo '地址：'.$address;}?>
    <?php $phone=zmf::config('phone');if(!empty($phone)){ echo '电话：'.$phone;}?>
  </p>
  <p><a href="<?php echo zmf::config('domain');?>" target="_blank"><?php echo zmf::config('sitename');?></a>  　版权所有　网站备案：<a href="#" target="_blank"><?php echo zmf::config('beian');?></a></p>
  <p>
    <a href="#">
      <img height="52" width="776" alt="safeverify 2.0" src="<?php echo Yii::app()->theme->baseUrl ?>/images/anquan.gif" /></a>
  </p>
  <p>
    <a href="#">
      <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/anquan.jpg" style="width: 70px;" /></a>
  <p>
</div>

<!--底部弹出框-->
    </div>
  <?php $this->renderPartial('/common/loadjs'); ?>      
  </body>
</html>
<?php if((Yii::app()->getController()->id=='index' AND Yii::app()->getController()->getAction()->id=='index')){?>
<script type="text/javascript">
  $(function() {
    $('#mulitline1').scrolling(19, 13);//最新认证
    $('#mulitline2').scrolling(20, 19); //AAA级信用厂家推荐
    $('#mulitline3').scrolling(20, 19);//最新营销团队

    $('#TabAdS01 .hd li').hover(function() {
      $(this).addClass("select").siblings().removeClass("select");
      var n = $(this).index("#TabAdS01 .hd li");
      $("#TabAdS01 .focus ul").eq(n).show().siblings().hide();
    })

    $('#TabAdS02 .hd li').hover(function() {
      $(this).addClass("select").siblings().removeClass("select");
      $(this).prepend('<s class="s1"></s><s class="s2">');
      var n = $(this).index("#TabAdS02 .hd li");
      $("#TabAdS02 .tab-cont").eq(n).show().siblings().hide();
    })
    $('#TabAdS03 .hdnav li').hover(function() {
      $(this).addClass("select").siblings().removeClass("select");
      $(this).prepend('<s class="s1"></s><s class="s2">');
      var n = $(this).index("#TabAdS03 .hdnav li");
      $("#TabAdS03 .tk_img_list").eq(n).show().siblings("#TabAdS03 .tk_img_list").hide();
    })
    jQuery.featureList($("#tabs li"), $("#output li"), {start_item: 0});//图片交换
  })
</script>
<script language="javascript" type="text/javascript">
  //热点聚焦的文字左滚动
  var speed = 20
  var scroll_begin = document.getElementById("scroll_begin");
  var scroll_div = document.getElementById("div1");
  var scroll_end = document.getElementById("scroll_end");
  scroll_end.innerHTML = scroll_begin.innerHTML
  var MyMar = setInterval(Marquee, speed)
  scroll_div.onmouseover = function() {
    clearInterval(MyMar)
  }
  scroll_div.onmouseout = function() {
    MyMar = setInterval(Marquee, speed)
  }
  function Marquee() {
    if (scroll_end.offsetWidth - scroll_div.scrollLeft <= 0)
      scroll_div.scrollLeft -= scroll_begin.offsetWidth + 200
    else
      scroll_div.scrollLeft++
  }
</script>
<?php }?>