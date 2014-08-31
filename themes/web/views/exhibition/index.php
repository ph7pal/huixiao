<div class="well well-sm">
  <h1><?php echo $creditInfo['companyname'];?></h1>
</div>
<div class="col-xs-3 col-sm-3 padding-right-15">
  <div class="alert alert-danger">
    <p><?php echo $creditInfo['companyname'];?></p>
  </div>
  <div class="panel panel-default">
    <!--div class="panel-heading"></div-->
    <div class="panel-body">
      <p><b>企业全称：</b><?php echo $creditInfo['companyname'];?></p>
      <p><b>官方网站：</b><a href="<?php echo $creditInfo['officeurl'];?>" target="_blank"><?php echo $creditInfo['officeurl'];?></a></p>
      <p><b>联系人：</b><?php echo $creditInfo['contactname'];?></p>
      <p><b>联系手机：</b><?php echo $creditInfo['contactmobile'];?></p>
    </div>
  </div>
</div>
<div class="col-xs-9 col-sm-9 no-padding">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        展会资讯
        <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[4]['id']));?></span>
      </h4>      
    </div>
    <div class="panel-body">
      <?php $this->renderPartial('/posts/flash',array('colinfo'=>$colinfos[9],'colnum'=>2,'facenum'=>12));?>
    </div>
  </div>
  <div class="clearfix"></div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        展会展示        
      </h4>      
    </div>
    <div class="panel-body">
      <?php $this->renderPartial('//module/listLecturer',array('areaid'=>0,'uid'=>$uid));?>
    </div>
  </div>
</div>