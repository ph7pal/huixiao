<div class="w_960 content">
  <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<?php echo CHtml::link('首页',zmf::config('baseurl'));?>&gt; <?php echo CHtml::link('讲师推荐',array('lecturer/index'));?>&gt; <?php echo $truename;?></span></div>
  <!--主要内容部分开始-->
  <div class="my_shop skin_blue">
      <!--个人主页头部开始-->
      <div class="shop_header">
          <div class="my_banner">
              <img src="<?php echo Yii::app()->theme->baseUrl;?>/images/mall_banner1.png" alt="" />
          </div>
          <div class="shop_nav">
              <ul class="clearfix">
                  <li><?php echo CHtml::link('首页<s class="s"></s>',array('lecturer/view','id'=>$info['id']));?></li>
                  <?php if(!empty($columns)){?>
                  <?php foreach($columns as $col){?>
                  <li <?php if($colid==$col['id']){?>class="select"<?php }?>><?php echo CHtml::link($col['title'].'<s class="s"></s>',array('lecturer/view','id'=>$info['id'],'colid'=>$col['id']));?></li>
                  <?php }?>
                  <?php }?>
              </ul>
          </div>
      </div>
      <!--个人主页头部结束-->
      <!--我的主页内容部分开始-->
      <div class="shop_body">
          <div class="grid_01 clearfix">
              <!--左侧个人介绍-->
              <div class="col_main">
                  <div class="main_wrap">
                      <div class="grid_02 clearfix">
                        <?php if(!empty($columns)){foreach($columns as $tmpkey=>$listcol){?>
                          <div class="nodule_a marTop10">
                            <div class="hd">
                               <?php echo $listcol['title'];?>
                            </div>
                            <div class="bd">
                                <ul class="list_content have_po2 clearfix">
                                    <?php foreach($listcol['posts'] as $_post){?>
                                    <li class="item"><?php echo CHtml::link('<img src="'.$_post['faceurl'].'" alt="'.$_post['title'].'" /><br/><span class="title">'.zmf::subStr($_post['title']).'</span>',array('posts/show','id'=>$_post['id']),array('target'=>'_blank'));?></li>
                                        <?php }?>
                                </ul>
                            </div>
                        </div>
                        <?php }}else{?>
                        <div class="nodule_a marTop10">
                            <div class="bd"></div>
                        </div> 
                        <?php }?>
                      </div>
                  </div>
              </div>
              <!--左侧个人信息介绍-->
              <div class="col_sub">
                  <div class="shop_name">
                      <?php echo $truename;?>的主页
                  </div>
                  <div class="shop_info">
                      <p class="pic">
                        <?php echo zmf::avatar($info['uid'],'big');?>
                        <?php echo '<span class="name">'.$truename.'<em class="quyu">('.$localname.')</em></span>';?>
                      </p>      
                      <p class="float">
                          <span class="b">认证级别：</span><?php echo zmf::creditIcon($info['uid']);?>
                      </p>
                      <p class="float">
                          <span class="b">所属公司：</span><span class="c">
                              <?php echo $info['companyname'];?>
                          </span>
                      </p>
                      <p class="tel">
                          <span class="inner"><?php echo $info['contactmobile'];?></span>
                      </p>
                  </div>
              </div>
          </div>
      </div>
      <!--我的主页内容部分结束-->
  </div>
</div>