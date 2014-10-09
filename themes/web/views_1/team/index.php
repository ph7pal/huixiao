<div class="col-xs-9 col-sm-9 padding-right-15">
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
<div class="col-xs-3 col-sm-3 no-padding">
  <div class="alert alert-danger">
    <p><?php echo $creditInfo['teamname'];?></p>
  </div>
  <div class="panel panel-default">
    <!--div class="panel-heading"></div-->
    <div class="panel-body">      
      <p><img class="media-object img-responsive" src="<?php echo zmf::avatar($uid,'big',true);?>  "></p>
      <p><b>当前级别：</b><?php echo zmf::creditIcon($uid);?></p>
      <p><b>任职公司：</b><?php echo $creditInfo['companyname'];?></p>
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