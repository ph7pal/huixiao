<?php $this->beginContent('/layouts/common'); ?>    	
<div id="header">
    <?php $this->renderPartial('/common/topnav');?>
    <div class="sp-nav">
        <div class="sp-logo">
            <a href="<?php echo Yii::app()->baseUrl;?>" class="logo">                
                <img src="<?php echo zmf::config('baseurl').zmf::config('logo');?>" height="48" alt="">                
                <?php echo '新灵中国';?>
            </a>
        </div>
        <div class="nav-items">
            <ul>
                <li class='on'><a href="<?php echo Yii::app()->baseUrl;?>">首页</a></li>
                <?php 
                $topcols=Columns::getColsByPosition('top',true);
                if(!empty($topcols)){
                foreach($topcols as $_t){
                ?>          
                <li <?php if($this->currentColId==$_t['first']['id']){echo 'class="on"';}?>>
                  <?php echo CHtml::link($_t['first']['title'],array('posts/index','colid'=>$_t['first']['id']));?>           
                </li>
                <?php }}?>
            </ul>
        </div>
    </div>
</div>
<div id="content">
    <?php echo $content; ?>
    <?php //$this->renderPartial('/user/aside'); ?>  
    <div class="extra"></div>
</div>


<?php $this->endContent(); ?>