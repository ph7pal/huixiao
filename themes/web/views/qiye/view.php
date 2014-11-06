<div class="w_960 content">
  <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <?php echo CHtml::link('信用厂家',array('qiye/index'));?>&gt; <?php echo $info['companyname'];?></span></div>
  <div class="my_shop skin_black">
      <div class="shop_header">
          <div class="my_banner">
              <img style="width: 960px; height: 150px;" src="<?php echo Yii::app()->theme->baseUrl;?>/images/mall_banner1.png" alt="" />
          </div>
          <div class="shop_logo png_ie6 clearfix">
              <div class="name_inner yahei">
                  <?php echo $info['companyname'];?>
              </div>
          </div>
          <div class="shop_nav">
              <ul class="clearfix">
                  <li><?php echo CHtml::link('首页<s class="s"></s>',array('qiye/view','id'=>$info['id']));?></li>
                  <li><?php echo CHtml::link('产品列表<s class="s"></s>',array('lecturer/index','belongid'=>$info['id']));?></li>
                  <li><?php echo CHtml::link('优秀讲师<s class="s"></s>',array('qiye/view','id'=>$info['id'],'type'=>'js'));?></li>
                  <?php if(!empty($columns)){?>
			    <?php foreach($columns as $col){?>
			    <li <?php if($colid==$col['id']){?>class="select"<?php }?>><?php echo CHtml::link($col['title'].'<s class="s"></s>',array('posts/index','uid'=>$info['uid'],'colid'=>$col['id']));?></li>
			    <?php }?>
			    <?php }?>			    
              </ul>
          </div>       
      </div>



      <div class="shop_body">
          <div class="grid_01 clearfix">
              <!--右侧推荐-->
              <div class="col_main">
                  <div class="main_wrap">
                      <div class="zdy_html">
                      </div>
                      <!--产品推荐 开始-->
                      <div class="module_a marTop10">
                          <div class="hd bigfont">
                              公司产品列表<s class="s left"></s><s class="s right"></s><?php echo CHtml::link('更多&gt;&gt;',array('goods/index','uid'=>$info['uid']),array('class'=>'more'));?>
                          </div>
                          <div class="bd">
                              <ul class="list_content have_po clearfix" id="Ul1">
                                <?php if(!empty($goods)){?>
                                <?php foreach($goods as $good){?>
                                <li class="item">
                                   <?php echo CHtml::link(CHtml::image($good['faceurl'],CHtml::encode($good['title'])).'<span class="title clearfix">'.$good['title'].'</span>',array('goods/view','id'=>$good['id']),array('target'=>'_blank')); ?>
                                  </li>    
                                <?php }?>
                                <?php }?>                                                                
                              </ul>
                          </div>
                      </div>
                      <!--讲师团队 开始-->
                      <div class="module_b marTop10">
                          <div class="hd">
                              优秀讲师团队
                          </div>
                          <div class="bd">
                              <ul class="designer clearfix">
                                <?php if(!empty($lecturers)){?>
                                <?php foreach($lecturers as $lecturer){?>
                                <li class="item">
                                  <?php echo CHtml::link(zmf::avatar($lecturer['uid'],'big').'<span class="name">'.$lecturer['truename'].'</span>',array('lecturer/view','id'=>$lecturer['id']),array('target'=>'_blank'));?>
                                <?php }?>
                                <?php }?>           
                              </ul>
                          </div>
                          <div class="ft">
                              <?php echo CHtml::link('更多',array('lecturer/index','belongid'=>$info['id']));?>
                          </div>
                          <span class="rc_tl"></span><span class="rc_tr"></span><span class="rc_bl"></span>
                          <span class="rc_br"></span>
                      </div>
                      <div class="grid_02 clearfix">
                          <div class="col_main">
                              <div class="main_wrap">
                                  <div class="module_b marTop10">
                                      <div class="hd">
                                          本月活动档期
                                      </div>
                                      <div class="bd">
                                          <ul class="news_list">
                                              <li><a href="#" target="_blank">江北区时代中心复式260㎡半包招标</a></li>
                                          </ul>
                                      </div>
                                      <div class="ft">
                                          <a href="#">更多>></a>
                                      </div>
                                      <span class="rc_tl"></span><span class="rc_tr"></span><span class="rc_bl"></span>
                                      <span class="rc_br"></span>
                                  </div>
                              </div>
                          </div>
                          <div class="col_sub">
                              <div class="module_b marTop10">
                                  <div class="hd">
                                      公司参展资讯
                                  </div>
                                  <div class="bd">
                                      <ul class="news_list">
                                          <li><a href="#" target="_blank">金科十年城米少更要巧装修</a></li>
                                      </ul>
                                  </div>
                                  <div class="ft">
                                      <a href="#">更多>></a>
                                  </div>
                                  <span class="rc_tl"></span><span class="rc_tr"></span><span class="rc_bl"></span>
                                  <span class="rc_br"></span>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <!--左侧 公司名片-->
              <div class="col_sub">
                  <div class="shop_name">
                      <?php echo $info['companyname'];?>
                  </div>
                  <div class="shop_info">                     
                      <p class="float">
                          <span class="b">联 系 人：</span><span class="c"><?php echo $info['contactname'];?></span>
                      </p>
                      <p class="float">
                          <span class="b">联系电话：</span><span class="c tel"><?php echo $info['contactmobile'];?></span>
                      </p>
                      <p class="float">
                          <span class="b">公司地址：</span><span class="c"><?php echo $info['address'];?></span>
                      </p>
                      <p class="rz">
                          该公司已通过实名认证<s class="i_rz" title="认证">认证</s>
                      </p>
                      <p class="float">
                          <span class="b">公司产品：</span><span class="c red"><?php echo $info['goods'];?></span>
                      </p>
                      <p class="float">
                          <span class="b">优秀讲师：</span><span class="c red"><?php echo $info['lecturers'];?></span>
                      </p>
                      <!--网友评价 开始-->
                       <p class="rz" style="height:1px"></p>
                        
                      <div style="position: relative; height:80px; width: 200px;">
                           <div style="width: 200px; padding: 0px;">
                              <dl class="hoscomm_dl clearfix" style="padding: 0px; margin: 0px; width: 200px; height: 20px; line-height: 20px;">
                                  <dt style="margin-left: 5px; float: left; color: #888;">总&nbsp;评&nbsp;价：</dt>
                                  <?php if($info['scorer']>3){?>
                                  <dd style="left: 60px;"><em class="starline"><b style="width: 92%;"></b><i></i></em><span class="fraction"><?php echo $info['score'];?></span> </dd>
                                  <?php }else{?>
                                  <span>评分人数太少</span>
                                  <?php }?>
                              </dl>
                          </div>
                          <div>
                              <div class="hoscomm_btn " style="left: 20px; top:20px;">
                                  <p><?php echo CHtml::link('',array('qiye/score','type'=>'qiye','id'=>$info['id']),array('class'=>'btn_write_comm'));?></p>
                              </div>
                          </div>
                      </div>
                      <!--网友评价 结束-->
                  </div>
                  
                  <div class="module_a marTop10">
                      <div class="hd">
                          公司招聘<s class="s left"></s><s class="s right"></s><a href="/gongsi/news_148.html"
                              class="more">更多&gt;&gt;</a>
                      </div>
                      <div class="bd">
                          <ul class="news">
                              <li><a href="/gongsi/news_148_742.html">长嘉汇联排别墅装修效果图</a></li>                              
                          </ul>
                      </div>
                  </div>                  
              </div>
          </div>
      </div>
  </div>
</div>