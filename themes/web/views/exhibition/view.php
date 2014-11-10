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
                  <li><?php echo CHtml::link('展会<s class="s"></s>',array('zhanhui/index','uid'=>$info['id']));?></li>
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
                      <!--展会 开始-->
                      <div class="module_a marTop10">
                          <div class="hd bigfont">
                              展会<s class="s left"></s><s class="s right"></s><?php echo CHtml::link('更多&gt;&gt;',array('zhanhui/index','uid'=>$info['uid']),array('class'=>'more'));?>
                          </div>
                          <div class="bd">
                              <ul class="list_content have_po clearfix" id="Ul1">
                                <?php if(!empty($zhanhuis)){?>
                                <?php foreach($zhanhuis as $good){?>
                                <li class="item">
                                   <?php echo CHtml::link(CHtml::image($good['faceurl'],CHtml::encode($good['title'])).'<span class="title clearfix">'.$good['title'].'</span>',array('exhibition/view','id'=>$good['id']),array('target'=>'_blank')); ?>
                                  </li>    
                                <?php }?>
                                <?php }?>                                                                
                              </ul>
                          </div>
                      </div>
                      <div class="grid_02 clearfix">
                        <?php if(!empty($columns)){foreach($columns as $tmpkey=>$listcol){?>
                        <?php if($tmpkey%2==0){?>
                          <div class="col_main">
                              <div class="main_wrap">
                                  <div class="module_b marTop10">
                                      <div class="hd">
                                          <?php echo $listcol['title'];?>
                                      </div>
                                      <div class="bd">
                                          <ul class="news_list">
                                            <?php foreach($listcol['posts'] as $_post){?>
                                            <li><?php echo CHtml::link($_post['title'],array('posts/show','id'=>$_post['id']),array('target'=>'_blank'));?></li><?php }?>
                                          </ul>
                                      </div>
                                      <div class="ft">
                                          <?php echo CHtml::link('更多>>',array('posts/index','uid'=>$info['uid'],'colid'=>$listcol['id']));?>
                                      </div>
                                      <span class="rc_tl"></span><span class="rc_tr"></span><span class="rc_bl"></span>
                                      <span class="rc_br"></span>
                                  </div>
                              </div>
                          </div>
                        <?php }else{?>
                        <div class="col_sub">
                              <div class="module_b marTop10">
                                  <div class="hd">
                                      <?php echo $listcol['title'];?>
                                  </div>
                                  <div class="bd">
                                      <ul class="news_list">
                                          <?php foreach($listcol['posts'] as $_post){?>
                                            <li><?php echo CHtml::link($_post['title'],array('posts/show','id'=>$_post['id']),array('target'=>'_blank'));?></li><?php }?>
                                      </ul>
                                  </div>
                                  <div class="ft">
                                      <?php echo CHtml::link('更多>>',array('posts/index','uid'=>$info['uid'],'colid'=>$listcol['id']));?>
                                  </div>
                                  <span class="rc_tl"></span><span class="rc_tr"></span><span class="rc_bl"></span>
                                  <span class="rc_br"></span>
                              </div>
                          </div>
                        <?php }?>
                        <?php }}?>                          
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
                      <!--网友评价 开始-->
                      <div style="position: relative; height:80px; width: 200px;">
                           <div style="width: 200px; padding: 0px;">
                              <dl class="hoscomm_dl clearfix" style="padding: 0px; margin: 0px; width: 200px; height: 20px; line-height: 20px;">
                                <?php if($info['scorer']>3){?>
                                  <dt style="margin-left: 5px; float: left; color: #888;">总&nbsp;评&nbsp;价：</dt>
                                  <dd style="left: 60px;"><em class="starline"><b style="width: 92%;"></b><i></i></em><span class="fraction">4.6</span> </dd>
                                  <?php }else{?>
                                  <span>评分人数太少</span>
                                  <?php }?>
                              </dl>
                          </div>
                          <div>
                              <div class="hoscomm_btn " style="left: 20px; top:20px;">

                                  <p><a target="_blank" href="pinglun.html" class="btn_write_comm"></a></p>
                              </div>
                          </div>
                      </div>
                      <!--网友评价 结束-->
                  </div>                  
                  <?php if(!empty($jobs)){?>
                  <div class="module_a marTop10">
                      <div class="hd">公司招聘<s class="s left"></s><s class="s right"></s><?php echo CHtml::link('更多>>',array('jobs/index','uid'=>$info['uid']),array('target'=>'_blank','class'=>'more'));?></div>
                      <div class="bd">
                          <ul class="news">
                            <?php foreach($jobs as $job){?>
                            <li><?php echo CHtml::link($job['title'],array('jobs/view','id'=>$job['id']),array('target'=>'_blank'));?></li><?php }?>
                          </ul>
                      </div>
                  </div>
                  <?php }?>      
              </div>
          </div>
      </div>
  </div>
</div>