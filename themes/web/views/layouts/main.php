<?php $this->beginContent('/layouts/common'); ?>    	
<div id="header">
    <?php $this->renderPartial('/common/topnav');?>
    <div class="sp-nav">
        <div class="sp-logo">
            <a href="<?php echo Yii::app()->createUrl('user/index',array('id'=>''));?>" class="logo">                
                <img src="<?php echo zmf::config('baseurl').zmf::config('logo');?>" height="48" alt="">                
                <?php echo 'dfdfdf';?>
            </a>
        </div>
        <div class="nav-items">
            <ul>
                <li><a href="<?php echo Yii::app()->createUrl('user/index');?>">首页</a></li>
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
<?php $this->endContent(); ?>