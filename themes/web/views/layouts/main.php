<?php $this->beginContent('/layouts/common'); ?>
<div id="header">
        <div class="col-xs-12 col-sm-4 padding-right-5">
            <a href="<?php echo Yii::app()->baseUrl;?>">                
                <img src="<?php echo Yii::app()->baseUrl;?>/common/images/logo.png" class="img-responsive" alt="<?php echo '新灵中国';?>">
            </a>
        </div>
    <div class="search-login visible-md visible-lg">
        <div class="col-xs-9 col-sm-5 padding-right-15">
            <form class="form-inline" role="form">
                    <div class="clearfix">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="请输入关键词" name="keyword" id="keyword">
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-primary" id="search-btn">搜索</button>
                            </span>
                        </div>
                    </div>
                    <div class="topkws">
                        <?php $tops=  SearchRecords::setTops();if(!empty($tops)){?>
                        <p>
                            热门关键词：
                                <?php foreach($tops as $tpkw){
                                    //echo CHtml::link($tpkw,array('search/posts','keyword'=>$tpkw),array('class'=>'topkws'));
                                    echo $tpkw;
                                }?>
                        </p>
                        <?php }?>
                    </div>
                </form>
        </div>
        <div class="col-xs-3 col-sm-3 padding-right-5 margin-left-15">
            <?php if (Yii::app()->user->isGuest) { ?>
            <?php echo CHtml::link('会员登录', array('site/login'),array('class'=>'btn btn-danger')); ?>
            <?php echo CHtml::link('立即注册', array('site/reg'),array('class'=>'btn btn-danger')); ?>
        <?php }else{ ?>
            <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
                  <?php echo $this->userInfo['truename'];?>
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                  <li role="presentation"><?php echo CHtml::link('主页', array('user/index', 'id' => Yii::app()->user->id),array('role'=>'menuitem')); ?></li> 
                  <li role="presentation"><?php echo CHtml::link('设置', array('user/config'),array('role'=>'menuitem')); ?></li>
                  <li role="presentation"><?php echo CHtml::link('退出', array('site/logout'),array('role'=>'menuitem')); ?></li>
                </ul>
            </div>
        <?php }?>
        </div>
    </div>
        <div class="clearfix"></div>
        <div class="navbar navbar-default bs-docs-nav" role="navigation">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
              </div>
              <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="<?php echo Yii::app()->baseUrl;?>">首页</a></li>
                    <?php 
                    $topcols=Columns::getColsByPosition('top',true);
                    if(!empty($topcols)){
                    foreach($topcols as $_t){
                    ?>          
                    <li <?php if(in_array($_t['first']['id'],$this->currentCol)){echo 'class="active"';}?>>
                      <?php echo CHtml::link($_t['first']['title'],array('posts/index','colid'=>$_t['first']['id']));?>           
                    </li>
                    <?php }}?>
                </ul>
                <!--ul class="nav navbar-nav navbar-right">                  
                  <li class="active"><a href="./">管理</a></li>
                </ul-->
              </div><!--/.nav-collapse -->              
            </div>
</div>     
<div id="content">
    <?php echo $content; ?>
    <?php //$this->renderPartial('/user/aside'); ?>  
    <div class="extra"></div>
</div>
<div id="footer">
  <div class="wrapper clear">
    <div class="act">        
        <div class="box paddLeft">
            <?php 
            $links=Link::allLinks();
            if(!empty($links)){?>
            <p>友链：
            <?php foreach($links as $link){?>            
                <a href="<?php echo $link['url'];?>" target="_blank"><?php echo $link['title'];?></a>            
            <?php }?>
            </p>
            <?php }?>
      <p>
      	<?php $address=zmf::config('address');if(!empty($address)){ echo '地址：'.$address;}?>
      	<?php $phone=zmf::config('phone');if(!empty($phone)){ echo '电话：'.$phone;}?>
      	</p>      
      <p>
          <a href="<?php echo zmf::config('domain');?>" target="_blank"><?php echo zmf::config('sitename');?></a>
          <?php echo zmf::config('copyright');?>
          <?php echo zmf::config('beian');?>
      </p>
      <p>
          <?php echo stripslashes(zmf::config('tongji'));?>
      </p>
    </div>
  </div>
</div>
</div>
<div class="bg"></div>
<?php $this->endContent(); ?>