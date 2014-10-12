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
              <li><a href="javascript:;">1</a> </li>
              <li><a href="javascript:;">2</a> </li>
              <li><a href="javascript:;">3</a> </li>
              <li><a href="javascript:;">4</a> </li>
              <li><a href="javascript:;">5</a> </li>
            </ul>
            <ul id="output">
              <li><a href="#" target="_blank">
                  <img src="UpFile/singlefile/0696547b-4cc4-4d38-809d-d0b977e775b2.jpg" alt="大型公益验房活动第二季正式开启" /></a></li>
              <li><a href="#" target="_blank">
                  <img src="UpFile/singlefile/6d25d1cc-20af-4bca-be72-1845043c79d6.jpg" alt="一切设计要从本源出发——设计泰斗柳冠中" /></a></li>
              <li><a href="#" target="_blank">
                  <img src="UpFile/singlefile/636382a3-a672-49ec-9d51-30209762bbd5.jpg" alt="高性价比环保装修 打造健康生活首要标准" /></a></li>
              <li><a href="#" target="_blank">
                  <img src="UpFile/singlefile/f2f24f8a-8897-4331-b309-479e2cbbf6ba.jpg" alt="夏季装修“四要诀”轻松打造清凉居室" /></a></li>
              <li><a href="#" target="_blank">
                  <img src="UpFile/singlefile/afaa3c58-ab3b-448b-880a-2f0aae9722b2.jpg" alt="《装修达人》国庆首发免费签送" /></a></li>
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
  <!--黑名单 开始-->
  <div class="floor floor_1">
    <div class="inner">
      <div class="f_hd">
        <span class="title">会销信用黑名单曝光</span><span class="right"><a href="#" class="view_all">浏览全部</a></span>
      </div>
    </div>
    <div class="w_960">
      <div class="module_03 xuetang" style="height: 300px">

        <div class="bd grid_02 clearfix">
          <div class="col_main">
            <div class="main_wrap">
              <div class="c_news">
                <ul>
                   <?php $item=$mainCols['heimingdan'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                </ul>
              </div>
            </div>
          </div>
          <div class="col_sub">
            <div class="l_news">
              <!--ul class="img_list clearfix">
                <li><a href="#">
                    <img src="#" alt="" width="118" height="89" /><span class="title">如何收纳物品释放卫生间空间</span></a></li>                
              </ul-->
              <ul class="txt_list">
                <?php $item=$mainCols['heimingdan'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>              </ul>
            </div>
          </div>
          <div class="col_extra">
            <div class="module_04" id="Tab2">
              <div class="bd small_paixu">
                <ul class="tab-cont">
                  <?php $item=$mainCols['heimingdan'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $key=>$one){echo '<li class="item">'.(($key<3) ? '<s class="s  s_red ">'.($key+1).'</s>' : '<s class="s ">'.($key+1).'</s>').CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--黑名单 结束-->
  <!--会销骗局 开始-->
  <div class="floor floor_2">
    <div class="inner">
      <div class="f_hd">
        <span class="title">会销骗局</span><span class="right"><a href="/wen/list_33.html" class="view_all">浏览全部</a></span>
      </div>
    </div>
    <div class="w_960">
      <div class="module_03 xuetang">

        <div class="bd grid_02 clearfix">
          <div class="col_main">
            <div class="main_wrap">
              <div class="c_news">
                <ul>
                  <?php $item=$mainCols['huixiaopianju'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                </ul>
              </div>
            </div>
          </div>
          <div class="col_sub">
            <div class="l_news">
              <!--ul class="img_list clearfix">
                <li><a href="#">
                    <img src="#" alt="" width="118" height="89" /><span class="title"></span></a></li>
              </ul-->
              <ul class="txt_list">
                <?php $item=$mainCols['huixiaopianju'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li>'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
              </ul>
            </div>
          </div>
          <div class="col_extra">
            <div class="module_04" id="Div1">
              <div class="bd small_paixu">
                <ul class="tab-cont">
                  <?php $item=$mainCols['zhanhuidangqi'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $key=>$one){echo '<li class="item">'.(($key<3) ? '<s class="s  s_red ">'.($key+1).'</s>' : '<s class="s ">'.($key+1).'</s>').CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--会销骗局 结束-->
  <div class="floor floor_3">
    <div class="inner">
      <div class="f_hd">
        <span class="title">生产厂家</span>
      </div>
    </div>
    <div class="w_960">
      <div class="grid_index_03 martop5 clearfix">
        <div class="col_main">
          <div class="main_wrap" style="margin-left: 0px;">
            <div class="tab_module nomartop">
              <div class="hd">
                <ul class="clearfix tab-hd">
                  <li class="select">AAA级信用热度排行<s class="s1"></s><s class="s2"></s></li>
                </ul>
                <?php echo CHtml::link('更多',array('posts/qiye'),array('target'=>'_blank','class'=>'more'));?>
              </div>
              <div class="bd yxtd yxtdw_f" style="height: 232px">
                <ul class="clearfix">
                  <!--AAA级信用热度排行开始-->
                  <?php
                  if(!empty($topProducers)){
                    foreach($topProducers as $qiye){
                        echo '<li class="item">'.CHtml::link(zmf::avatar($qiye['uid'],'small').'<span class="title">'.$qiye['companyname'].'</span>',array('qiye/index','id'=>$qiye['id']),array('target'=>'_blank')).'</li>';
                    }
                  }
                  ?>
                  <!--AAA级信用热度排行结束-->
                </ul>
              </div>
            </div>
            <div class="tab_module">
              <div class="hd">
                <ul class="clearfix tab-hd">
                  <li class="select">厂家招商资讯<s class="s1"></s><s class="s2"></s></li>
                </ul>

              </div>
              <div class="bd hb_news">
                <ul class="clearfix">
                  <!--商家推广资讯开始-->
                  <?php $item=$mainCols['changjiazhaoshangzixun'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li class="item">'.'.'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                  <!--商家推广资讯结束-->
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col_sub">
          <div class="tab_module nomartop">
            <div class="hd">
              <ul class="clearfix tab-hd">
                <li class="select">最新厂家<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('posts/qiye'),array('target'=>'_blank','class'=>'more'));?>   
            </div>
            <div class="bd zxgs" style="height: 380px;">
              <!--最新AAA级信用厂家 开始 一共20条数据-->
              <ul id="mulitline2">
                <?php if(!empty($newProducers)){foreach($newProducers as $qiye){echo '<li class="item">'.CHtml::link($qiye['companyname'],array('qiye/index','id'=>$qiye['id']),array('target'=>'_blank')).'</li>';}}?>
              </ul>
              <!--最新AAA级信用厂家 结束-->
            </div>
          </div>
        </div>
      </div>
      <div class="module_03 module_03_2" id="TabAdS03">
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
        <div class="bd tk_img_list" style="display: none">
          <ul class="clearfix">
            <!--热销产品推荐 开始 一共12条数据-->
            <li class="item"><a href="#" target="_blank" title="富力城">
                <img src="UpFile/singlefile/aebb98fd-0298-4f7a-a979-d2f08eedf749.jpg" width="135" height="88" alt="" /><span class="title">富力城</span></a></li>
            <!--热销产品推荐 结束-->
          </ul>
        </div>
      </div>
      <div class="grid_index_04 clearfix">
        <div class="col_main">
          <div class="main_wrap">
            <div class="tab_module martop10" id="TabAdS02">
              <div class="hd">
                <ul class="clearfix tab-hd">
                  <li class="select">推荐优秀讲师<s class="s1"></s><s class="s2"></s></li>
                  <?php  foreach($areas as $ak=>$aval){?><li><?php echo $aval['name'];?><s class="s1"></s><s class="s2"></s></li><?php }?>
                </ul>
                <?php echo CHtml::link('更多',array('posts/jiangshi'),array('target'=>'_blank','class'=>'more'));?>   
              </div>
              <div class="m_a m_a_2">

                <div class=" designer">
                  <ul class="clearfix tab-cont">
                    <?php 
                    if(!empty($topLecturers)){
                        foreach($topLecturers as $topLecturer){
                            echo '<li class="item">'.CHtml::link(zmf::avatar($topLecturer['uid'],'small').'<span class="name">'.$topLecturer['truename'].'</span>',array('lecturer/index','id'=>$topLecturer['uid']),array('target'=>'_blank')).'</li>';
                        }
                    }
                    ?>
                  </ul>
                  <?php  foreach($areas as $ak=>$aval){?>
                  <ul class="clearfix tab-cont" style="display: none">
                    <?php
                    $areaLectureres=Users::getLecturer($aval['id']);
                    if(!empty($areaLectureres)){
                        foreach($areaLectureres as $areaLecturer){
                            echo '<li class="item">'.CHtml::link(zmf::avatar($areaLecturer['uid'],'small').'<span class="name">'.$areaLecturer['truename'].'</span>',array('lecturer/index','id'=>$areaLecturer['uid']),array('target'=>'_blank')).'</li>';
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
  <div class="floor floor_4">
    <div class="inner">
      <div class="f_hd">
        <span class="title">展会公司</span>
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
                <li class="select">热门展会公司<s class="s1"></s><s class="s2"></s></li>
              </ul>
              <?php echo CHtml::link('更多',array('posts/qiye'),array('target'=>'_blank','class'=>'more'));?>   
            </div>
            <div class="bd zxgs w_f" style="height: 300px;">
              <ul class="clearfix">
                <!--热门展会公司开始-->
                <?php if(!empty($topExhibitions)){foreach($topExhibitions as $key=>$topEx){echo '<li class="item">'.CHtml::link(zmf::avatar($topEx['uid'],'small').'<span class="title">'.$topEx['companyname'].'</span>',array('exhibition/view','id'=>$topEx['id']),array('target'=>'_blank')).'</li>'; }}?>
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
              <?php echo CHtml::link('更多',array('posts/index','colid'=>$mainCols['zhanhuidangqi']['colinfo']['id']),array('target'=>'_blank','class'=>'more'));?>   
            </div>
            <div class="module_04" id="Div3">
              <div class="bd small_paixu" style="height: 298px;">
                <ul class="tab-cont clearfix">
                  <?php $item=$mainCols['zhanhuidangqi'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $key=>$one){echo '<li class="itemtime">'.(($key<3) ? '<s class="s  s_red ">'.($key+1).'</s>' : '<s class="s ">'.($key+1).'</s>').CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'<em class="fr">13-25</em>'.'</li>'; }}?>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--热销产品推荐 结束-->

    </div>
  </div>
  <!--营销团队 开始-->
  <div class="floor floor_5">
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
                <?php echo CHtml::link('更多',array('posts/qiye'),array('target'=>'_blank','class'=>'more'));?>   
              </div>
              <div class="bd yxtd yxtdw_f" style="height: 232px">
                <ul class="clearfix">
                  <!--营销团队开始-->
                  <?php if(!empty($topTeams)){foreach($topTeams as $key=>$topTeam){echo '<li class="item">'.CHtml::link(zmf::avatar($topTeam['uid'],'small').'<span class="title">'.$topTeam['teamname'].'</span>',array('team/index','id'=>$topTeam['id']),array('target'=>'_blank')).'</li>'; }}?>
                  <!--营销团队结束-->
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
                  <!--商家推广资讯开始-->
                  <?php $item=$mainCols['yingxiaomoshi'];$itemPosts=$item['posts'];if(!empty($itemPosts)){foreach($itemPosts as $one){echo '<li class="item">'.'.'.CHtml::link($one['title'],array('posts/show','id'=>$one['id']),array('target'=>'_blank')).'</li>'; }}?>
                  <!--商家推广资讯结束-->
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
              <?php echo CHtml::link('更多',array('posts/qiye'),array('target'=>'_blank','class'=>'more'));?>   
            </div>
            <div class="bd zxgs" style="height: 380px;">
              <!--最新营销团队 数据循环 开始 一共20条数据-->
              <ul id="mulitline3">
                <?php if(!empty($newTeams)){foreach($newTeams as $key=>$newTeam){echo '<li class="item">'.CHtml::link($newTeam['teamname'],array('team/index','id'=>$newTeam['id']),array('target'=>'_blank')).'</li>'; }}?>
              </ul>
              <!--最新营销团队 数据循环 开始 一共20条数据-->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
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
          <div class="tab_module nomartop">
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

  <div class="blockB job">
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