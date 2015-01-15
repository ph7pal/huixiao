<!DOCTYPE HTML>
<html lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />                
        <meta name="robots" content="all" />
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="<?php if (!empty($this->pageDescription)){echo $this->pageDescription;}else{ echo zmf::config('siteDesc');}?>" />
        <link rel="stylesheet" href="<?php echo Yii::app()->baseUrl; ?>/common/css/bootstrap.min.css">
        <link rel="shortcut icon" href="<?php echo Yii::app()->baseUrl; ?>/favicon.ico" type="image/x-icon" />
        <?php if(Yii::app()->getController()->id=='user'){?>
        <link rel="stylesheet" href="<?php echo Yii::app()->baseUrl ?>/common/css/newsoul.css">
        <link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/css/style.css">
        <link href="<?php echo Yii::app()->baseUrl; ?>/common/uploadify/uploadify.css" rel="stylesheet">
        <?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/common/uploadify/jquery.uploadify-3.1.min.js', CClientScript::POS_END);?>
        <?php }elseif(!$this->inMobile){?>
        <link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/css/newsoul.css">
        <link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/css/style.css">
        <?php }?>
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>        
        <?php 
        Yii::app()->clientScript->registerCoreScript('jquery'); 
        Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/myfunc.js", CClientScript::POS_END);
        Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/bootstrap.min.js", CClientScript::POS_END);
        ?>
        <?php //Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/jquery.SuperSlide.2.1.js");?>
        <?php if((Yii::app()->getController()->id=='posts' AND Yii::app()->getController()->getAction()->id=='index')){?>
        <?php //Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/lazyload.js", CClientScript::POS_END); ?> 
        <?php }?>
    </head>
    <body>
    <?php echo $content; ?>
      <style>
        .navbar-default {
        }
        .navbar-default .navbar-nav > .active > a {          
        }
      </style>
    <?php $this->renderPartial('/common/footer'); ?>
    <?php $this->renderPartial('/common/loadjs'); ?>    
    </body>
</html>