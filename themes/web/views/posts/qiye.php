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
          <a href="#" class="pull-left">
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
      <div class="col-md-2 col-xs-2 no-padding">
        <a href="/huixiao/index.php?r=posts/show&amp;id=227"><p><img src="http://localhost/huixiao/common/images/nopic_124.gif" class="img-responsive"></p></a>
        <p><a href="/huixiao/index.php?r=posts/show&amp;id=227">AAA级信用公司推荐</a></p>        
      </div>
      <div class="col-md-2 col-xs-2 no-padding">
        <a href="/huixiao/index.php?r=posts/show&amp;id=227"><p><img src="http://localhost/huixiao/common/images/nopic_124.gif" class="img-responsive"></p></a>
        <p><a href="/huixiao/index.php?r=posts/show&amp;id=227">AAA级信用公司推荐</a></p>        
      </div>
      <div class="col-md-2 col-xs-2 no-padding">
        <a href="/huixiao/index.php?r=posts/show&amp;id=227"><p><img src="http://localhost/huixiao/common/images/nopic_124.gif" class="img-responsive"></p></a>
        <p><a href="/huixiao/index.php?r=posts/show&amp;id=227">AAA级信用公司推荐</a></p>        
      </div>
      <div class="col-md-2 col-xs-2 no-padding">
        <a href="/huixiao/index.php?r=posts/show&amp;id=227"><p><img src="http://localhost/huixiao/common/images/nopic_124.gif" class="img-responsive"></p></a>
        <p><a href="/huixiao/index.php?r=posts/show&amp;id=227">AAA级信用公司推荐</a></p>        
      </div>
      <div class="col-md-2 col-xs-2 no-padding">
        <a href="/huixiao/index.php?r=posts/show&amp;id=227"><p><img src="http://localhost/huixiao/common/images/nopic_124.gif" class="img-responsive"></p></a>
        <p><a href="/huixiao/index.php?r=posts/show&amp;id=227">AAA级信用公司推荐</a></p>        
      </div>
      <div class="col-md-2 col-xs-2 no-padding">
        <a href="/huixiao/index.php?r=posts/show&amp;id=227"><p><img src="http://localhost/huixiao/common/images/nopic_124.gif" class="img-responsive"></p></a>
        <p><a href="/huixiao/index.php?r=posts/show&amp;id=227">AAA级信用公司推荐</a></p>        
      </div>
    </div>            
</div>
<?php }?>
<?php }?>