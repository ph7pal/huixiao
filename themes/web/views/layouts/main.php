<?php $this->beginContent('/layouts/common'); ?>
<style>
  .logo{
    width:220px;
    height:auto;
  }
  .search-login{
    padding-top: 25px;
  }
  .topkws{
    padding: 0;
  }
  .top-hearder{
    height: 35px;
    width: 100%;
    background: #f5f5f5;    
    line-height: 35px;
  }
  .navbar-default{
    background: url("common/images/hd_bg.gif") repeat-x center;
    border-left:1px solid #d9534f;
    border-bottom:2px solid #ac2925;
  }
  .navbar-default .navbar-collapse, .navbar-default .navbar-form {
    border: none;
  }
  .navbar-default .navbar-nav>li>a {
    color: #d43f3a;
  }
  .navbar-default .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus {
    color: #333333;
  }
  .navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:hover, .navbar-default .navbar-nav>.active>a:focus {
  color: #333333;
  }
</style>
<div class="top-hearder">
  <div class="wrapper">
    <div class="pull-right">
      <?php if (Yii::app()->user->isGuest) { ?>
            <?php echo CHtml::link('会员登录', array('site/login')); ?>
            <?php echo CHtml::link('立即注册', array('site/reg')); ?>
        <?php }else{ ?>
            <div class="dropdown">
                <span class="dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
                  <?php echo $this->userInfo['truename'];?>
                  <span class="caret"></span>
                </span>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                  <li role="presentation"><?php echo CHtml::link('主页', array('user/index', 'id' => Yii::app()->user->id),array('role'=>'menuitem')); ?></li> 
                  <li role="presentation"><?php echo CHtml::link('设置', array('user/config'),array('role'=>'menuitem')); ?></li>
                  <li role="presentation"><?php echo CHtml::link('退出', array('site/logout'),array('role'=>'menuitem')); ?></li>
                </ul>
            </div>
        <?php }?>
    </div>
  </div>
</div>


<div class="wrapper">
<div id="header">
        <div class="col-xs-4 col-sm-4 padding-right-5">
            <a href="<?php echo zmf::config('baseurl');?>">                
                <img src="<?php echo Yii::app()->baseUrl;?>/common/images/logo.png" class="img-responsive logo" alt="<?php echo '新灵中国';?>">
            </a>
        </div>
    <div class="search-login">
        <div class="col-xs-5 col-sm-5 padding-right-15 pull-right">
            <form class="form-inline" role="form">
              <div class="topkws">
                  <?php $tops=  SearchRecords::getTops();if(!empty($tops)){?>
                  <p>
                      热门关键词：
                          <?php foreach($tops as $tpkw){
                              echo CHtml::link($tpkw,array('posts/search','keyword'=>$tpkw),array('class'=>'topkws'));
                          }?>
                  </p>
                  <?php }?>
              </div>
              <div class="clearfix">
                  <div class="input-group">
                      <input type="text" class="form-control" placeholder="请输入关键词" name="keyword" id="keyword">
                      <span class="input-group-btn">
                          <button type="button" class="btn btn-primary" id="search-btn">搜索</button>
                      </span>
                  </div>
              </div>                    
            </form>
        </div>
    </div>
</div>
</div>
<div class="clearfix"></div>
<div class="navbar navbar-default" role="navigation">
  <div class="wrapper">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
      </button>
    </div>
    <div class="navbar-collapse collapse  no-padding">
      <ul class="nav navbar-nav">
          <li><a href="<?php echo zmf::config('baseurl');?>">首页</a></li>
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
    </div>
  </div>
</div>
<div class="wrapper">
<div id="content">
  <?php echo $content; ?>   
  <hr/>
  <div class="extra">
    <?php 
    $links=Link::allLinks();
    if(!empty($links)){?>
    <p>友链链接：</p>    
    <?php foreach($links as $link){?>
    <div class="col-xs-2 no-padding link-holder">
      <a href="<?php echo $link['url'];?>" target="_blank">
        <?php if($link['attachid']>0 && $link['imgurl']!=''){?>
        <img src="<?php echo $link['imgurl'];?>" class="img-responsive"/>
        <?php }else{?>
        <p class="text-center"><?php echo $link['title'];?></p>
        <?php }?>
      </a>   
    </div>
    <?php }?>
    
    <?php }?>
  </div>
</div>
<div id="footer">
  <div class="wrapper clear">
    <div class="col-xs-2"></div>
    <div class="col-xs-10">
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
    <div class="col-xs-2"></div>    
</div>
</div>
<div class="bg"></div>
</div>
<?php $this->endContent(); ?>