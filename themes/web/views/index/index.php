<div class="content index_page">
  <div class="w_960">
    <div style="height: 135px; width: 100%; border: 1px solid #ccc">
      <div style="float: left; width: 130px; margin-top: 20px;">
        <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/hot.png" />
      </div>
      <div class="hot" style="float: right; width: 830px;">
        <h1>
          <a href="#">关于开展“AAA级信用企业”信用评级的通知</a>
        </h1>
        <div id="div1" class="scroll_div" style="overflow: hidden">
          <div id="scroll_begin" class="scroll_div1">
            <?php $item=$mainCols['toutiaotuijian'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '·'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'&nbsp;&nbsp;'; }}?>
          </div>
          <div id="scroll_end" class="scroll_div2"></div>
        </div>
      </div>
    </div>
    <div class="grid_index_01 clearfix">
      <div class="col_main">
        <div class="main_wrap">
          <div class="tab_module nomartop" id="TabAdS01">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">会销资讯<s class="s1"></s><s class="s2"></s></li>
                <li>新闻资讯<s class="s1"></s><s class="s2"></s></li>
                <li>政府法规<s class="s1"></s><s class="s2"></s></li>
              </ul>
            </div>
            <div class="focus">
              <!--会销资讯 开始-->
              <ul class="textList">
                <?php $item=$mainCols['huixiaozixun'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
              </ul>
              <!--会销资讯 结束-->
              <!--新闻资讯 开始-->
              <ul class="textList" style="display: none">
                <?php $item=$mainCols['xinwenzixun'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
              </ul>
              <!--新闻资讯 结束-->
              <!--政府法规 开始-->
              <ul class="textList" style="display: none">
                <?php $item=$mainCols['zhengfufagui'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
              </ul>
              <!--政府法规 结束-->
            </div>
            <!--头版新闻结束-->
          </div>
        </div>
      </div>

      <div class="col_sub">
        <div class="slideIMG">
          <div id="feature_list">
            <ul id="tabs">
              <?php $item=$mainCols['tupianxinwen'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $key=>$one){echo '<li><a href="javascript:;">'.($key+1).'</a> </li>'; }}?>
            </ul>
            <ul id="output">
              <?php if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link(CHtml::image($one['faceurl'],CHtml::encode($one['title'])),array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>              
            </ul>
          </div>
        </div>
      </div>
      <!--最新认证 开始-->
      <div class="col_extra">
        <div class="tab_module nomartop">
          <div class="hd">
            <ul class="clearfix tab-hd">
              <li class="select">最新认证<s class="s1"></s><s class="s2"></s></li>
            </ul>
          </div>
          <div class="bd zxgs" style="height: 260px;">
            <!--最新认证开始-->
            <ul id="mulitline1">
              <?php if (!empty($newCredits)) {?>
              <?php foreach ($newCredits as $key=>$ci) { ?> 
              <li class="item"><?php echo CHtml::link(Users::getUserInfo($ci['uid'],'truename'),array('mobile/index','uid'=>$ci['uid']),array('target'=>'_blank'));?></li>
              <?php }?>
              <?php }?>
            </ul>
            <!--最新认证结束-->
          </div>
        </div>

      </div>
      <!--最新认证 结束-->
    </div>
  </div>
    
    
    <div class="floor floor_4">
    <div class="inner">
      <div class="f_hd">
        <span class="title">会销信用黑名单曝光</span>
      </div>
    </div>
    <div class="w_960">
      <div class="grid_index_01 clearfix">
        <div class="col_main">
          <div class="main_wrap" style="margin-left: 490px; margin-right: 240px">
            <div class="tab_module nomartop">
              <div class="hd">
                <ul class="clearfix tab-hd">
                  <li class="select">会销常见骗局<s class="s1"></s><s class="s2"></s></li>
                </ul>
                <?php echo CHtml::link('浏览全部',array('posts/index','colid'=>$mainCols['huixiaopianju']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>
              </div>
              <div class="focus">
                <ul class="textList" style="height: 280px">
                  <?php $item=$mainCols['huixiaopianju'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col_sub" style="width: 480px;">
          <div class="tab_module nomartop">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">黑名单曝光<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['heimingdan']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>
            </div>
            <div class="bd zxgs w_f" style="height: 300px;">
              <div class="l_news">
                <?php $item=$mainCols['heimingdan'];$itemPosts=$item['posts']; if($itemPosts)$hei_imgs=  array_slice($itemPosts, 0, 3);?>
                <ul class="img_list clearfix">
                  <?php if(!empty($hei_imgs)){foreach($hei_imgs as $one){echo '<li>'.CHtml::link('<img src="'.$one['faceurl'].'" alt="'.$one['title'].'" width="118" height="89" /><span class="title">'.$one['title'].'</span>',array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                </ul>
                <ul class="txt_list"><?php if($itemPosts)$hei_limit5=  array_slice($itemPosts, 2, 5);if(!empty($hei_limit5)){foreach($hei_limit5 as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?></ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col_extra" style="width: 230px; margin-left: -230px;">
          <div class="tab_module nomartop">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">曝光排行<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['heimingdan']['colinfo']['id'],'order'=>'hot'),array('target'=>'_blank','class'=>'more'));?>
            </div>
            <div class="module_04" id="Div3">
              <div class="bd small_paixu" style="height: 298px;">
                <ul class="tab-cont clearfix">
                  <?php $item=$mainCols['topheimingdan'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $key=>$one){echo '<li class="item">'.(($key<3) ? '<s class="s  s_red ">'.($key+1).'</s>' : '<s class="s ">'.($key+1).'</s>').CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="floor floor_3">
    <div class="inner">
      <div class="f_hd">
        <span class="title">信用企业</span>
      </div>
    </div>
      <style type="text/css">
		/* 下面是前/后按钮代码，如果不需要删除即可 */
		.slideTxtBox .arrow{  position:absolute; right:10px; top:0; }
		.slideTxtBox .arrow a{ display:block;  width:5px; height:9px; float:right; margin-right:5px; margin-top:10px;  overflow:hidden;
			 cursor:pointer; background:url("../images/arrow.png") 0 0 no-repeat; }
		.slideTxtBox .arrow .next{ background-position:0 -50px;  }
		.slideTxtBox .arrow .prevStop{ background-position:-60px 0; }
		.slideTxtBox .arrow .nextStop{ background-position:-60px -50px; }

		</style>
    <div class="w_960">
      <div class="grid_index_03 martop5 clearfix">
        <div class="col_main">
          <div class="main_wrap" style="margin-left: 0px;">
            <div class="slideTxtBox tab_module nomartop">
		<div class="hd">
		<ul class="clearfix tab-hd">
                  <li class="select">生产厂家<s class="s1"></s><s class="s2"></s></li>
                    <li>展会公司<s class="s1"></s><s class="s2"></s></li>
                    <li>营销团队<s class="s1"></s><s class="s2"></s></li>
                </ul>
			</div>
			<div class="bd yxtd yxtdw_f" style="height: 380px">
				<ul class="clearfix">
                  <!--AAA级信用热度排行开始-->
                  <?php
                  if(!empty($topProducers)){
                    foreach($topProducers as $qiye){
                        echo '<li class="item">'.CHtml::link(zmf::avatar($qiye['uid'],'small').'<span class="title">'.$qiye['companyname'].'</span>',array('qiye/view','id'=>$qiye['id']),array('target'=>'_blank')).'</li>';
                    }
                  }
                  ?>
                  <!--AAA级信用热度排行结束-->
                </ul>
				<ul class="clearfix" style="display: none;">
					<!--热门展会公司开始-->
                <?php if(!empty($topExhibitions)){foreach($topExhibitions as $key=>$topEx){echo '<li class="item">'.CHtml::link(zmf::avatar($topEx['uid'],'small').'<span class="title">'.$topEx['companyname'].'</span>',array('exhibition/view','id'=>$topEx['id']),array('target'=>'_blank')).'</li>'; }}?>
                <!--热门展会公司结束-->
				</ul>
				<ul class="clearfix">
                  <!--营销团队开始-->
                  <?php if(!empty($topTeams)){foreach($topTeams as $key=>$topTeam){echo '<li class="item">'.CHtml::link(zmf::avatar($topTeam['uid'],'small').'<span class="title">'.$topTeam['teamname'].'</span>',array('team/view','id'=>$topTeam['id']),array('target'=>'_blank')).'</li>'; }}?>
                  <!--营销团队结束-->
                </ul>
			</div>
		</div>  
            <script id="jsID" type="text/javascript">
		jQuery(".slideTxtBox").slide({titOnClassName:'select'});
		</script> 
          </div>
        </div>
        <div class="col_sub">
          <div class="tab_module nomartop">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">最新厂家<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('qiye/index'),array('target'=>'_blank','class'=>'more'));?>   
            </div>
            <div class="bd zxgs" style="height: 380px;">
              <!--最新AAA级信用厂家 开始 一共20条数据-->
              <ul id="mulitline2">
                <?php if(!empty($newProducers)){foreach($newProducers as $qiye){echo '<li class="item">'.CHtml::link($qiye['companyname'],array('qiye/view','id'=>$qiye['id']),array('target'=>'_blank')).'</li>';}}?>
              </ul>
              <!--最新AAA级信用厂家 结束-->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="floor floor_4">
    <div class="inner">
      <div class="f_hd">
        <span class="title">资讯</span>
      </div>
    </div>
    <div class="w_960">
      <div class="grid_index_01 clearfix">
        <div class="col_main">
          <div class="main_wrap" style="margin-left: 490px; margin-right: 240px">
            <div class="tab_module nomartop">
              <div class="hd">
                <ul class="clearfix tab-hd">
                  <li class="select">展会资讯<s class="s1"></s><s class="s2"></s></li>
                </ul>
                <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['zhanhuizixun']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>   
              </div>
              <div class="focus">
                <ul class="textList" style="height: 280px">
                  <?php $item=$mainCols['zhanhuizixun'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                </ul>
              </div>
              <!--头版新闻结束-->
            </div>
          </div>
        </div>

        <div class="col_sub" style="width: 480px;">
          <div class="tab_module nomartop">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">厂家招商资讯<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['zhaoshang']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>
            </div>
            <div class="bd zxgs w_f" style="height: 300px;">
              <ul class="clearfix">
                <!--热门展会公司开始-->
                <?php $item=$mainCols['zhaoshang'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li class="item">'.CHtml::link('<span class="title">'.$one['title'].'</span>',array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                <!--热门展会公司结束-->
              </ul>
            </div>
          </div>
        </div>
        <div class="col_extra" style="width: 230px; margin-left: -230px;">
          <div class="tab_module nomartop">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">展会档期<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('zhanhui/index'),array('target'=>'_blank','class'=>'more'));?> 
            </div>
            <div class="module_04" id="Div3">
              <div class="bd small_paixu" style="height: 298px;">
                <ul class="tab-cont clearfix">
                  <?php if(!empty($zhanhuis)){foreach($zhanhuis as $key=>$one){echo '<li class="itemtime">'.(($key<3) ? '<s class="s  s_red ">'.($key+1).'</s>' : '<s class="s ">'.($key+1).'</s>').CHtml::link($one['title'],array('zhanhui/view','id'=>$one['id']),array('target'=>'_blank')).'<em class="fr">'.date('Y-m-d',$one['start_time']).'</em>'.'</li>'; }}?>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--热销产品推荐 结束-->
    </div>
  </div>  
    <div class="floor floor_3">
        <div class="w_960">
        <div class="module_03 module_03_2" id="TabAdS03" style="height:380px">
        <div class="hd">
          <span class="title">热销产品推荐</span> <?php echo CHtml::link('浏览全部',array('goods/index'),array('target'=>'_blank','class'=>'view_all'));?><span class="nav">
            <!--热销商品 品种开始-->
            <div class="hotx">
              <div class="hdnav">
                <!--ul>
                  <li class="select">全部<s class="s1"></s><s class="s2"></s></li>
                  <li>中式<s class="s1"></s><s class="s2"></s></li>
                </ul-->
              </div>
            </div>
            <!--热销商品 品种结束-->
          </span>
        </div>
        <div class="bd tk_img_list">
          <ul class="clearfix">
            <!--热销产品推荐 开始 一共12条数据-->
            <?php if(!empty($topGoods)){?>
            <?php foreach($topGoods as $goods){?>
            <li class="item">
              <?php echo CHtml::link(CHtml::image($goods['faceurl'],$goods['title'],array('width'=>135,'height'=>101)).'<span class="title">'.$goods['title'].'</span>',array('goods/view','id'=>$goods['id']));?></li>
                <?php }?>
            <?php }?>
            <!--热销产品推荐 结束-->
          </ul>
        </div>
      </div>
      <div class="grid_index_04 clearfix">
        <div class="col_main">
          <div class="main_wrap">
            <div class="tab_module martop10" id="TabAdS02" style="height:380px">
              <div class="hd">
                <ul class="clearfix tab-hd">
                  <li class="select">推荐优秀讲师<s class="s1"></s><s class="s2"></s></li>
                  <?php  foreach($areas as $ak=>$aval){?><li><?php echo $aval['name'];?><s class="s1"></s><s class="s2"></s></li><?php }?>
                </ul>
                <?php echo CHtml::link('更多',array('lecturer/index'),array('target'=>'_blank','class'=>'more'));?>   
              </div>
              <div class="m_a m_a_2">

                <div class=" designer">
                  <ul class="clearfix tab-cont">
                    <?php 
                    if(!empty($topLecturers)){
                        foreach($topLecturers as $topLecturer){
                            echo '<li class="item">'.CHtml::link(zmf::avatar($topLecturer['uid'],'small').'<span class="name">'.$topLecturer['truename'].'</span>',array('lecturer/view','id'=>$topLecturer['id']),array('target'=>'_blank')).'</li>';
                        }
                    }
                    ?>
                  </ul>
                  <?php  foreach($areas as $ak=>$aval){?>
                  <ul class="clearfix tab-cont" style="display: none">
                    <?php
                    $areaLectureres=Lecturer::getLecturer($aval['id']);
                    if(!empty($areaLectureres)){
                        foreach($areaLectureres as $areaLecturer){
                            echo '<li class="item">'.CHtml::link(zmf::avatar($areaLecturer['uid'],'small').'<span class="name">'.$areaLecturer['truename'].'</span>',array('lecturer/view','id'=>$areaLecturer['id']),array('target'=>'_blank')).'</li>';
                        }
                    }?>
                  </ul>      
                  <?php }?> 
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--热销产品推荐 开始-->
  <!--营销团队 开始-->
  <!--div class="floor floor_5">
    <div class="inner">
      <div class="f_hd">
        <span class="title">营销团队</span>
      </div>
    </div>
    <div class="w_960">
      <div class="grid_index_03 martop5 clearfix">
        <div class="col_main">
          <div class="main_wrap" style="margin-left: 0px;">
            <div class="tab_module nomartop">
              <div class="hd">
                <ul class="clearfix tab-hd">
                  <li class="select">营销团队排行榜<s class="s1"></s><s class="s2"></s></li>
                </ul>
                <?php //echo CHtml::link('更多',array('team/index'),array('target'=>'_blank','class'=>'more'));?>   
              </div>
              <div class="bd yxtd yxtdw_f" style="height: 232px">
                <ul class="clearfix">                  
                  <?php if(!empty($topTeams)){foreach($topTeams as $key=>$topTeam){echo '<li class="item">'.CHtml::link(zmf::avatar($topTeam['uid'],'small').'<span class="title">'.$topTeam['teamname'].'</span>',array('team/view','id'=>$topTeam['id']),array('target'=>'_blank')).'</li>'; }}?>
                </ul>
              </div>
            </div>
            <div class="tab_module">
              <div class="hd">
                <ul class="clearfix tab-hd">
                  <li class="select">营销模式<s class="s1"></s><s class="s2"></s></li>
                </ul>
                <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['yingxiaomoshi']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>
              </div>
              <div class="bd hb_news">
                <ul class="clearfix">                  
                  <?php $item=$mainCols['yingxiaomoshi'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li class="item">'.'.'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>                  
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col_sub">
          <div class="tab_module nomartop">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">最新营销团队<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php //echo CHtml::link('更多',array('team/index'),array('target'=>'_blank','class'=>'more'));?>   
            </div>
            <div class="bd zxgs" style="height: 380px;">              
              <ul id="mulitline3">
                <?php if(!empty($newTeams)){foreach($newTeams as $key=>$newTeam){echo '<li class="item">'.CHtml::link($newTeam['teamname'],array('team/view','id'=>$newTeam['id']),array('target'=>'_blank')).'</li>'; }}?>
              </ul>              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div-->
  <!--营销团队 结束-->
  <!--会销行业必看知识推荐 开始-->
  <div class="floor floor_6">
    <div class="inner">
      <div class="f_hd">
        <span class="title">会销行业知识推荐</span>
      </div>
    </div>
    <div class="w_960">
      <div class="grid_index_03 martop5 clearfix">
        <div class="col_main">
          <div class="main_wrap" style="margin-left: 490px; margin-right: 240px;">
            <div class="tab_module nomartop">
              <div class="hd">
                <ul class="clearfix tab-hd">
                  <li class="select">知识推荐栏三<s class="s1"></s><s class="s2"></s></li>
                </ul>
                <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['zhishituijian3']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>   
              </div>
              <div class="bd notice">
                <ul>
                  <!--知识推荐栏三开始 一共12条数据-->
                  <?php $item=$mainCols['zhishituijian3'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.'.'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>                  
                  <!--知识推荐栏三结束 一共12条数据-->
                </ul>
              </div>
            </div>
          </div>
        </div>
          <div class="col_sub fl">
          <div class="tab_module nomartop"  style="height:328px">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">知识推荐栏四<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['zhishituijian4']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>   
            </div>
            <div class="module_04">
              <div class="bd small_paixu">
                <ul class="tab-cont">
                  <!--知识推荐栏四开始 一共10条数据-->
                  <?php $item=$mainCols['zhishituijian4'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $key=>$one){echo '<li class="item">'.(($key<3) ? '<s class="s  s_red ">'.($key+1).'</s>' : '<s class="s ">'.($key+1).'</s>').CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                  <!--知识推荐栏四开始 一共10条数据-->
                </ul>
                <!--最新公告结束-->
              </div>
            </div>
          </div>
        </div>
        <div class="col_extra fl" style="width: 480px">
          <div class="tab_module nomartop" style="width: 230px; float: left;">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">知识推荐栏一<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['zhishituijian1']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>   
            </div>
            <div class="bd notice">
              <!--知识推荐栏一开始 一共12条数据-->
              <ul>
                <?php $item=$mainCols['zhishituijian1'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.'.'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>                
              </ul>
              <!--知识推荐栏一结束-->
            </div>
          </div>
          <div class="tab_module nomartop" style="width: 230px; float: right">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">知识推荐栏二<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['zhishituijian2']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>              
            </div>
            <div class="bd notice">
              <!--知识推荐栏二开始 一共12条数据-->
              <ul>
                <?php $item=$mainCols['zhishituijian2'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.'.'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>  
              </ul>
              <!--知识推荐栏二结束 一共12条数据-->
            </div>
          </div>

        </div>

      </div>
    </div>
  </div>
</div>
<!--会销行业必看知识推荐 结束-->
<!--职位招聘 开始-->
<div class="w_960">

  <div class="blockB job" style="height:330px">
    <div class="hd"><i class="icon icon_pin"></i>最新招聘职位</div>
    <div class="bd">
      <ul class="clearfix">
        
        <?php if(!empty($newJobs)){foreach($newJobs as $one){echo '<li class="item"><span class="company">'.CHtml::link($one['gs_title'],array('jobs/view','id'=>$one['id']),array('target'=>'_blank')).'</span><span class="post">'.CHtml::link($one['title'],array('jobs/view','id'=>$one['id']),array('target'=>'_blank')).'</span></li>'; }}?>
      </ul>
    </div>
    <?php echo CHtml::link('浏览全部',array('jobs/index'),array('target'=>'_blank','class'=>'more'));?>
  </div>
  <div class="blank10">
  </div>



</div>
<!--职位招聘 结束-->