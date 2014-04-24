<!DOCTYPE HTML>
<html lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />                
        <meta name="robots" content="all" />
        <meta name="description" content="<?php if (!empty($this->pageDescription)){echo $this->pageDescription;}else{ echo zmf::config('siteDesc');}?>" />
        <link rel="stylesheet" href="<?php echo Yii::app()->baseUrl; ?>/common/css/bootstrap.css">
        <link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/css/newsoul.css">
        <link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/css/style.css">
        <link href="<?php echo Yii::app()->baseUrl; ?>/common/uploadify/uploadify.css" rel="stylesheet">
        <link rel="shortcut icon" href="<?php echo Yii::app()->baseUrl; ?>/favicon.ico" type="image/x-icon" />
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>        
        <?php 
        Yii::app()->clientScript->registerCoreScript('jquery'); 
        Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/common/uploadify/jquery.uploadify-3.1.min.js', CClientScript::POS_END);
Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/myfunc.js", CClientScript::POS_END);
        ?>
        <?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/jquery.SuperSlide.2.1.js");?>
        <?php if((Yii::app()->getController()->id=='posts' AND Yii::app()->getController()->getAction()->id=='index')){?>
        <?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/lazyload.js", CClientScript::POS_END); ?> 
        <?php }?>
    </head>
    <body>
        <div class="wrapper">
            <?php echo $content; ?>
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
        <?php $this->renderPartial('/common/footer'); ?>
        <?php $this->renderPartial('/common/loadjs'); ?>
    </body>
</html>