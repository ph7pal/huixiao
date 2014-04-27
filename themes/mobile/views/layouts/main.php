<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="<?php echo $this->keywords;?>" />
        <meta name="description" content="<?php echo $this->pageDescription;?>" />
        <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1">
        <meta content="yes" name="apple-mobile-web-app-capable" />
        <meta content="black" name="apple-mobile-web-app-status-bar-style"  />
        <meta name="apple-touch-fullscreen" content="yes">
        <meta name="full-screen" content="yes">
        <meta name="format-detection" content="telephone=no">    
        <meta name="format-detection" content="address=no">
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
        <link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo zmf::userSkin($this->uid) ?>">
        <?php Yii::app()->clientScript->registerCoreScript('jquery'); ?>
    </head>
    <body>
        <style>
            body{
                font: 12px/1.6 arial,helvetica,sans-serif;
            }
            #zmf{
                width:960px;
                margin:0 auto;
            }
            .floatR{float:right;}
        </style>
        <div class="navbar navbar-default" role="navigation">
            <div id="zmf">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>  
                <?php $logo=zmf::userConfig($this->uid,'logo');?>  
                <a class="navbar-brand <?php if($logo){ echo 'logo';}?>" href="<?php echo Yii::app()->createUrl('mobile/index',array('uid'=>$this->uid));?>">
                <?php                 
                if($logo){    
                    $attachinfo=  Attachments::getOne($logo);
                    if($attachinfo){
                        echo '<img src="'.zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],124,$attachinfo['classify']).'"/>';
                    }else{
                        echo zmf::userConfig($this->uid,'company'); 
                    }
                }else{ 
                    echo zmf::userConfig($this->uid,'company');                    
                }?>
                </a>
              </div>
              <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li <?php if(!$this->colid){?>class="active"<?php }?> ><a href="<?php echo Yii::app()->createUrl('mobile/index',array('uid'=>$this->uid));?>">首页</a></li>
                  <?php 
                    $cols=$this->userCols;
                    if(!empty($cols)){
                        foreach($cols as $col){?>
            <li <?php if($this->colid==$col['id']){?>class="active"<?php }?>><?php echo CHtml::link($col['title'],array('mobile/index','uid'=>$this->uid,'colid'=>$col['id']));?></li>
                        <?php }?>
                    <?php }?>
                </ul>
                <?php if($this->uid==Yii::app()->user->id){?>  
                <ul class="nav navbar-nav navbar-right">                  
                  <li class="active"><a href="<?php echo Yii::app()->createUrl('user/index');?>">管理</a></li>
                </ul>
                <?php }?>
              </div><!--/.nav-collapse -->
            </div>
          </div>        
        <div id="zmf">
        
            <div class="visible-xs visible-sm visible-md visible-lg">
<?php 
$topads=Ads::getAllByPo('topbar','flash',$this->uid);
if(!empty($topads)){?>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">        
    <div class="carousel-inner">
<?php foreach($topads as $key=>$_topad){
$_topad_img=Attachments::getFaceImg($_topad['id'],'ads');        
?>    
    <div class="item <?php if($key==0){ echo 'active';}?>">
      <img alt="First slide" src="<?php echo zmf::uploadDirs($_topad_img['logid'], 'site', $_topad_img['classify'], 'origin').'/'.$_topad_img['filePath'];?>">
    </div>
<?php }?>
    </div>
    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
      
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
      
    </a>
</div>
<?php }?>
<div class="jumbotron">
  <h1>Hello, world!</h1>
  <p><?php echo zmf::userConfig($this->uid,'service_aim_cn');?></p>
  <p><?php echo zmf::userConfig($this->uid,'service_aim_en');?></p>
</div>         
                <?php echo $content; ?>
            </div>
            <hr>
            <footer>
                <p>
                    <?php echo zmf::userConfig($this->uid,'company').zmf::userConfig($this->uid,'copyright').'&nbsp;&nbsp;'.zmf::userConfig($this->uid,'beian');?>
                </p>
            </footer>
        
        </div>
        <?php $this->renderPartial('/common/footer'); ?>
        <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    </body>
</html>