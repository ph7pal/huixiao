<?php if(!empty($posts)){?>
<?php foreach($posts as $post){?>
<div class="panel panel-default">
    <div class="panel-heading second-panel">            
        <h4 class="panel-title">
          <b><?php echo $post['companyname'];?></b>
        </h4>
    </div>
    <div class="panel-body">                
        <div class="media">
          <a href="<?php echo Yii::app()->createUrl('mobile/index',array('id'=>$post['uid']));?>" class="pull-left">
            <img class="media-object img-responsive" style="width: 124px" src="<?php echo zmf::avatar($post['uid'],'small',true);?>  ">
          </a>  
          <div class="media-body">
            <p><b>公司简介：</b></p>
            <p><?php echo $post['description'];?></p>
            <p><b>公司地址：</b></p>
            <p><?php echo $post['address'];?></p>
          </div>
        </div>
      <div class="clearfix" style="margin-top: 15px;"></div>
      <?php if(!empty($post['posts'])){?>
      <?php foreach($post['posts'] as $one){?>
      <div class="col-md-2 col-xs-2 no-padding">
        <a href="<?php echo Yii::app()->createUrl('posts/show',array('id'=>$one['id']));?>">
          <p>
          <?php if($one['attachid']!=''){?>
            <?php $attachinfo=  Attachments::getOne($one['attachid']);if($attachinfo){?>
            <?php echo '<img src="'.zmf::imgurl($attachinfo['logid'],$attachinfo['filePath'],'124',$attachinfo['classify']).'" alt="'.$one['title'].'的封面" title="'.$one['title'].'" class="img-responsive"/>';?>
            <?php }else{?>
            <img src="<?php echo zmf::noImg('url');?>" class="img-responsive"/>
            <?php }?>
            <?php }else{?>
            <img src="<?php echo zmf::noImg('url');?>" class="img-responsive"/>
            <?php }?>
          </p>
        </a>
        <p><?php echo CHtml::link($one['title'],array('posts/show','id'=>$one['id']));?></p>        
      </div>      
      <?php }?>
      <?php }?>
    </div>            
</div>
<?php }?>
<?php }?>