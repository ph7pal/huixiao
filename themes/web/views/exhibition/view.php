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
      <ul class="nav nav-pills nav-stacked" role="tablist">
        <li role="presentation" <?php if($colid==''){?>class="active"<?php }?>><?php echo CHtml::link('首页',array('lecturer/index','id'=>$uid));?></li>
        <?php if(!empty($columns)){?>
        <?php foreach($columns as $col){?>
        <li role="presentation" <?php if($colid==$col['id']){?>class="active"<?php }?>><?php echo CHtml::link($col['title'],array('lecturer/index','id'=>$uid,'colid'=>$col['id']));?></li>
        <?php }?>
        <?php }?>
      </ul>
    </div>
  </div>
</div>
<div class="col-xs-9 col-sm-9 no-padding">
  <?php if(!empty($selected)){?>
  <?php foreach($selected as $sel){?>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <?php echo $sel['title'];?>
      </h4>      
    </div>
    <div class="panel-body">
      <?php $this->renderPartial('/posts/miniLists',array('colinfo'=>$sel,'uid'=>$uid,'colnum'=>2,'facenum'=>12));?>
    </div>
  </div>
  <div class="clearfix"></div>
  <?php }?>
  <?php }?>
</div>