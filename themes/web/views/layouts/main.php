<?php $this->beginContent('/layouts/common'); ?>    	
<div id="header">
    <?php $this->renderPartial('/common/topnav');?>
    <div class="sp-nav">
        <div class="sp-logo">
            <a href="<?php echo Yii::app()->baseUrl;?>" class="logo">                
                <img src="<?php echo Yii::app()->baseUrl;?>/common/images/logo.png" alt="">
                <?php echo '新灵中国';?>
            </a>
            <div class="sp-search">
                <form class="form-inline" role="form">
                    <div class="col-xs-10 row">
                        <input type="text" class="form-control" placeholder="请输入关键词">                        
                    </div>
                    <div class="col-xs-2 row">
                        <button type="button" class="btn btn-primary">搜索</button>
                    </div>
                </form>
            </div>
            
        </div>
        <style>
            .sp-search{
                width:480px;
                height:30px;
                margin:10px 0 0 0px; 
                float: left;
            }
        </style>

        <div class="navbar navbar-default" role="navigation">
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
                    <li class='active'><a href="<?php echo Yii::app()->baseUrl;?>">首页</a></li>
                    <?php 
                    $topcols=Columns::getColsByPosition('top',true);
                    if(!empty($topcols)){
                    foreach($topcols as $_t){
                    ?>          
                    <li <?php if($this->currentColId==$_t['first']['id']){echo 'class="active"';}?>>
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
</div>
<div id="content">
    <?php echo $content; ?>
    <?php //$this->renderPartial('/user/aside'); ?>  
    <div class="extra"></div>
</div>


<?php $this->endContent(); ?>