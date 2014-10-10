<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><?php echo CHtml::encode($this->pageTitle); ?></title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/base.css" rel="stylesheet" />
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/hf.css" rel="stylesheet" />
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/index.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/chanpinList.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/chanpin.css" rel="stylesheet" type="text/css" />
    <?php 
    Yii::app()->clientScript->registerCoreScript('jquery'); 
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/jquery.scrolltotop.js", CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/select.jQuery.js", CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/common.js", CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/chanpin.js", CClientScript::POS_END);    
    ?>
  </head>
  <body>
    <div class="bg2013s">
      <!--头部-->
      <div class="w_960 header clearfix">
        <h1 class="logo">
          <a href="#">
            <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/logo.png" alt="" height="90" /></a></h1>

        <div class="searchBar">

          <div class="searchBarBd">
            <p class="txt" >
              <input type="text" id="s_txt" class="s_txt" />
            </p>

            <p class="btn"  >
              <button type="submit" class="s_btn" id="s_btn" >
                搜索</button>
            </p>
          </div>
          <p class="s_nav clearfix">
            <span>热门关键词:</span>
            <a href="#" target="_blank" style="color: #f86b0d;">视频样板房</a>
            <a href="#" target="_blank">投诉维权</a>
            <a href="#" target="_blank" style="color: #202ba7;">自助建站</a>
            <a href="#" target="_blank">创意家居</a>
            <a href="#" target="_blank" style="color: #e60a4c;">风水</a>
            <a href="#" target="_blank" style="font-weight: bold;">装修日记</a>
          </p>

        </div>
        <div class="fr" style="margin-right: 20px; float: right; margin-top: 30px;">
          <a href="#" class="loginBtn"></a>
          <a href="#" class="zcBtn"></a>
        </div>

      </div>
      <div style="clear: both"></div>
      <!--导航条-->
      <div class="channelNav">
        <div class="w_960 channelNavBd">
          <ul>
            <li class="current"><a href="<?php echo zmf::config('baseurl');?>">首页</a></li>
            <?php 
            $topcols=Columns::getColsByPosition('top',true);
            if(!empty($topcols)){
            foreach($topcols as $_t){
            ?>          
            <li <?php if(in_array($_t['first']['id'],$this->currentCol)){echo 'class="current"';}?>>
              <?php echo CHtml::link($_t['first']['title'],array('posts/index','colid'=>$_t['first']['id']));?>           
            </li>
            <?php }}?>            
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
  <p class="f_nav">
    <a href='#'>设为首页</a>|
    <a href="#">加入收藏</a>|
    <a href="#" target="_blank">隐私条款</a>|
    <a href="#" target="_blank">广告服务</a>|
    <a href="#" target="_blank">网站地图</a>|
    <a href="#" target="_blank">关于我们</a>|
    <a href="#" target="_blank">免责声明</a>|
    <a href="#" target="_blank">友情链接</a>
  </p>
  <p>
    Copyright @ 2003-2016 cqzs.com All Right Reserved.　Powered By MoMoCMS 2.0

    装饰行业第一门户 重庆装饰网 重庆日报装建专刊 客服热线:<b>400-023-1508</b>
  </p>
  <p><a href="#">重庆装饰网</a>　版权所有　网站备案：<a href="#" target="_blank">渝ICP备05007965</a></p>
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
<div id="mytool_clean" style="height: 0px;"></div>
<div id="mytool">
  <div class="mybtn">
    <div class="ztc" id="ztc">
      <div class="form">
        <ul class="clearfix">
          <li><span class="a">QQ：</span><span class="b">
              <input type="text" id="QQ" maxlength="15" class="ipt" value="" />
            </span></li>
          <li><span class="a">电话：</span><span class="b">
              <input type="text" id="KPhone" maxlength="15" class="ipt" value="" />
            </span></li>
          <li><span class="a">称呼：</span><span class="b">
              <input type="text" id="ZName" maxlength="20" class="ipt" value="" />
            </span></li>
          <li>
            <input class="btn" id="zxztc" type="button" value="提交" />
          </li>
        </ul>
      </div>
      <div class="txt">如果您准备装修房子，请将您的联系方式提交给我们或<span style="color: red">扫一扫右边二维码</span>加重庆装饰网微信公共号，我们会第一时间给您发送商家优惠信息。</div>
      <a href="javascript:void(0);" class="close" onclick="closemytool()">关闭</a>
    </div>
  </div>
</div>  
      
      
      
    </div>
  </body>
</html>

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