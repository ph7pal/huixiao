<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><?php echo CHtml::encode($this->pageTitle); ?></title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />    
 <?php if(Yii::app()->getController()->id=='site'){?>
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/login.css" rel="stylesheet" type="text/css" />
    <?php if(Yii::app()->getController()->getAction()->id=='login'){?>
     
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/index.css" rel="stylesheet" />
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/hf.css" rel="stylesheet" />
    <?php }elseif(Yii::app()->getController()->getAction()->id=='reg'){?>
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/registerbase.css" rel="stylesheet" type="text/css" />
     <link href="<?php echo Yii::app()->theme->baseUrl ?>/css/sign.css" rel="stylesheet" type="text/css" />
    <?php }?>
<?php }?>
     
    <?php 
    Yii::app()->clientScript->registerCoreScript('jquery'); 
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/jquery.scrolltotop.js", CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/select.jQuery.js", CClientScript::POS_END);
    Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . "/js/common.js", CClientScript::POS_END);
    
    ?>
  </head>
  <body>
    <?php echo $content; ?>
  </body>
</html>