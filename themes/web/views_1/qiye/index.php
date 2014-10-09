<div class="well well-sm" style="background: url(common/images/bg.gif) center no-repeat;height: 125px;">  
</div>
<div class="col-xs-3 col-sm-3 padding-right-15">
  <div class="alert alert-danger">
    <p><?php echo $creditInfo['companyname'];?></p>
  </div>
  <div class="panel panel-default">
    <!--div class="panel-heading"></div-->
    <div class="panel-body">
      <p><b>企业地址：</b><?php echo $creditInfo['address'];?></p>
      <p><b>官方网站：</b><a href="<?php echo $creditInfo['companyurl'];?>" target="_blank"><?php echo $creditInfo['companyurl'];?></a></p>
      <p><b>企业描述：</b><?php echo $creditInfo['description'];?></p>
    </div>
  </div>
</div>
<div class="col-xs-9 col-sm-9 no-padding">
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" <?php if($colid=='' && $type==''){?>class="active"<?php }?>><?php echo CHtml::link('首页',array('qiye/index','id'=>$uid));?></li>
    <?php if(!empty($columns)){?>
    <?php foreach($columns as $col){?>
    <li role="presentation" <?php if($colid==$col['id']){?>class="active"<?php }?>><?php echo CHtml::link($col['title'],array('qiye/index','id'=>$uid,'colid'=>$col['id']));?></li>
    <?php }?>
    <?php }?>
    <li role="presentation" <?php if($type=='js'){?>class="active"<?php }?>><?php echo CHtml::link('优秀讲师',array('qiye/index','id'=>$uid,'type'=>'js'));?></li>
  </ul>
  <div style="margin-bottom: 15px;"></div>
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
  <?php }?>
  <?php }?>
  <div class="clearfix"></div>
  <?php if((!$colid && $type=='js') || (!$colid && !$type)){?>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        讲师团队        
      </h4>      
    </div>
    <div class="panel-body">
      <?php $this->renderPartial('//module/listLecturer',array('areaid'=>0,'uid'=>$uid));?>
    </div>
  </div>
  <?php }?>
  
</div>