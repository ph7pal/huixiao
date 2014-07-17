<?php if(!empty($posts)){?>
<?php foreach($posts as $post){?>
<div class="media">  
  <a href="#" class="pull-left">
    <div class="media-object">
    <img class="img-responsive" style="width: 124px" src="<?php echo zmf::avatar($post['uid'],'small',true);?>  ">
    <p class="text-center"><strong>呵呵</strong></p>
    </div>
  </a>
  <div class="media-body">
    <p>当前级别：<?php echo $post['companyname'];?></p>
    <p>任职公司：<?php echo $post['companyname'];?></p>
    <p>职位名称：<?php echo $post['jobname'];?></p>    
  </div>
</div>
<?php } ?>
<?php } ?>