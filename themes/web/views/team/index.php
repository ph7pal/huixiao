<div class="col-xs-9 col-sm-9 padding-right-15">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        团队介绍        
      </h4>      
    </div>
    <div class="panel-body">
      
    </div>
  </div>
  <div class="clearfix"></div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        团队案例        
      </h4>      
    </div>
    <div class="panel-body">
      
    </div>
  </div>
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
    </div>
  </div>
</div>