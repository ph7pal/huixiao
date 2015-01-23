<!doctype html>
<html>
<head>
<title><?php echo zmf::config('sitename');?> 管理中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<?php 
Yii::app()->clientScript->registerCoreScript('jquery',CClientScript::POS_END);
Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/common/uploadify/jquery.uploadify-3.1.min.js', CClientScript::POS_END);
Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/myfunc.js", CClientScript::POS_END);
Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/bootstrap.min.js", CClientScript::POS_END);
?>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl?>/common/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl?>/common/admin/manage.css">
</head>
<body scroll="no">
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="<?php echo Yii::app()->createUrl('admin/index/index');?>" class="navbar-brand">
      <?php echo zmf::config('sitename');?>
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><?php echo CHtml::link('后台首页',array('index/index'));?></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">内容管理 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <?php 
            $arr = array(
                'posts' => '文章',                
                'comments' => '评论',
                'ads' => '展示',
                'link' => '友链',
                'columns' => '栏目',
                'questions' => '客服',
              );
              foreach ($arr as $k => $v) {
                  echo '<li><a href="' . Yii::app()->createUrl('admin/all/list', array('table' => $k)) . '">' . $v . '</a></li>';
              }                
            ?> 
            <li class="divider"></li>
            <li><?php echo CHtml::link('展会',array('zhanhui/index'));?></li>
            <li><?php echo CHtml::link('招聘',array('jobs/index'));?></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">认证管理 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><?php echo CHtml::link('认证列表',array('all/list','table'=>'credit'));?></li>
            <li class="divider"></li>
            <?php 
            $arr = array(
                'producer' => '企业',
                'lecturer' => '讲师',
                'exhibition' => '展会',
                'team' => '团队',
                'agent' => '代理商',
                'dealer' => '经销商',
                'personal' => '个人',
                'magazine' => '行业杂志',
                'servicer' => '厂家客服',
                'website' => '行业网站',
              );
              foreach ($arr as $k => $v) {
                  echo '<li><a href="' . Yii::app()->createUrl('admin/'.$k.'/index') . '">' . $v . '</a></li>';
              }                
            ?>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">运营管理 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><?php echo CHtml::link('产品',array('goods/index'));?></li>
            <li><?php echo CHtml::link('产品分类',array('all/list','table'=>'tags'));?></li>
            <li class="divider"></li>
            <li><?php echo CHtml::link('用户',array('all/list','table'=>'users'));?></li>
            <li><?php echo CHtml::link('用户组',array('all/list','table'=>'user_group'));?></li>
            <li><?php echo CHtml::link('用户徽章',array('medal/index'));?></li>
            <li class="divider"></li>
            <li><?php echo CHtml::link('工作福利',array('fuli/index'));?></li>
            <li class="divider"></li>
            <?php 
            $arr = array(
                'clearcache' => '清除缓存',
                'db' => '数据库',
              );
              foreach ($arr as $k => $v) {
                  echo '<li><a href="' . Yii::app()->createUrl('admin/tools/index', array('type' => $k)) . '">' . $v . '</a></li>';
              }                
            ?> 
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">设置 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <?php 
            $arr = array(
                //'indexpage' => '首页定制',
                'baseinfo' => '基本设置',
                'siteinfo' => '站点信息',
                'upload' => '上传设置',
                'page' => '分页设置',
                'base' => '运维设置',
                'email' => '邮箱设置',
              );
              foreach ($arr as $k => $v) {
                  echo '<li><a href="' . Yii::app()->createUrl('admin/config/index', array('type' => $k)) . '">' . $v . '</a></li>';
              }                
            ?>                
          </ul>
        </li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li><?php echo CHtml::link('站点首页',zmf::config('baseurl'),array('target'=>'_blank'));?></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">欢迎：<?php echo Yii::app()->user->name;?> <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li ><?php echo CHtml::link('修改密码',array('users/update','id'=>Yii::app()->user->id),array('target'=>'main'));?></li>
            <li ><?php echo CHtml::link('站点首页',zmf::config('baseurl'),array('target'=>'_blank'));?></li> 
            <li class="divider"></li>
            <li ><?php echo CHtml::link('退出',array('/site/logout'));?></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

  
<div class="main container" id="main">
  <?php if(!empty($this->menu)){?>
  <div class="dropdown pull-right">
    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      更多操作
     <span class="caret"></span>
    </button>
    <?php 
      $this->widget('zii.widgets.CMenu', array(
          'id'=>'myMenu',
          'activeCssClass'=>'active',
          'items'=>$this->menu,
          'htmlOptions'=>array('class'=>'dropdown-menu'),
      ));
      ?>  
  </div>
  <?php }?>
  <?php echo $content;?>
</div>
    <div id="footer">
      <script>
        $(document).ready(function(){
          $('.dropdown-toggle').dropdown();
        });
      </script>
        <?php $this->renderPartial('/common/footer');?>    
        Copyright&copy;<?php echo zmf::config('domain');?>
    </div>
</body>
</html>