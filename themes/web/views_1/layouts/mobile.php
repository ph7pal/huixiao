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
        <link rel="stylesheet" href="<?php echo Yii::app()->baseUrl; ?>/common/css/bootstrap.min.css">
        <?php 
        Yii::app()->clientScript->registerCoreScript('jquery'); 
        Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/bootstrap.min.js", CClientScript::POS_END);
        ?>
    </head>
    <body>
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
          <div class="visible-xs visible-sm visible-md visible-lg">       
            <?php echo $content; ?>
          </div>
    </body>
</html>