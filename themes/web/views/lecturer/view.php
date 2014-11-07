<div class="w_960 content">
  <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <?php echo CHtml::link('讲师推荐',array('lecturer/index'));?>&gt; <?php echo $truename;?></span></div>
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
                      <div class="nodule_a">
                          <div class="hd">
                              最新投稿作品
                          </div>
                          <div class="bd">
                              <ul class="list_content have_po2 clearfix">
                                  <li class="item">
                                      <a href="#" target="_blank" class="link">
                                          <img src="UpFile/singlefile/a206d8b2-4591-4128-b5c8-b924809f8ba6.jpg" alt="" /><span class="title">富力城公园别墅-欧式风格</span>  </a>
                                  </li>

                              </ul>
                          </div>
                      </div>
                      <div class="nodule_a marTop10">
                          <div class="hd">
                              自我介绍
                          </div>
                          <div class="bd text">
                              “毕业院校:重庆大学建筑专业 从业时间:8年擅长风格: 现代简约，欧式复古，田园，地中海，韩式，中式设计理念:忌浮夸，忌形而上学，让家成为心灵的港湾个人爱好:音乐，运动，烹饪代表楼盘:保利心语花园，融汇香缇卡纳，西城绿景，金科蚂蚁SOHO，华润二十四城，金科阳光小镇，奥林匹克花园…
                          </div>
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
                          <span class="b">认证级别：</span><span class="c"> <s class="i i_tong" title="铜牌设计师"></s></span>
                      </p>
                      <p class="float">
                          <span class="b">所属公司：</span><span class="c">
                              <?php echo $info['companyname'];?>
                          </span>
                      </p>
                      <p class="float">
                          <span class="b">擅长模式：</span><span class="c"><tt>混搭</tt></span>
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