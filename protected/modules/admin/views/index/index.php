<!doctype html>
<html>
<head>
<title><?php echo zmf::config('sitename');?> 管理中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<?php Yii::app()->clientScript->registerCoreScript('jquery',CClientScript::POS_END);?>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl?>/common/admin/manage.css">
</head>
<body scroll="no">
<div class="header"> 
  <div class="logininfo">
      <span class="welcome">欢迎：<?php echo Yii::app()->user->name;?></span>
      <span ><?php echo CHtml::link('修改密码',array('users/update','id'=>Yii::app()->user->id),array('target'=>'main'));?></span>
      <span ><?php echo CHtml::link('站点首页',Yii::app()->baseUrl,array('target'=>'_blank'));?></span>
      <span ><?php echo CHtml::link('退出',array('site/logout'));?></span>
  </div>
  <div class="logo"></div>
  <div class="nav">
    <ul>
        <li><a class="list_btn " href="/admin/check.html">审核</a></li>
        <li><a class="list_btn " href="/admin/check.html">审核</a></li>
        <li><a class="list_btn " href="/admin/check.html">审核</a></li>
    </ul>
  </div>  
</div>
<div class="main" id="main">
    <div class="aside">
        <a class="list_btn " href="/admin/check.html">审核</a>
        <a class="list_btn " href="/admin/new.html">最新</a>
        <a class="list_btn " href="/admin/new.html">最新</a>
        <a class="list_btn current" href="/admin/new.html">最新</a>
    </div>
    <div class="container">
        
    </div>
</div>
</body>
</html>