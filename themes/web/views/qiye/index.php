<div class="well well-sm">
  <h1>重庆争鸣科技有限公司</h1>
</div>
<div class="col-xs-3 col-sm-3 padding-right-15">
  <div class="alert alert-danger">
    <p>重庆争鸣科技有限公司</p>
  </div>
  <div class="panel panel-default">
    <!--div class="panel-heading"></div-->
    <div class="panel-body">
      <p>所属区域：江北区</p>
      <p>联系电话： 13678456701</p>
      <p>在线客服：1164208096</p>
      <p>店铺地址：重庆市江北区红石路5号28-1</p>
    </div>
  </div>
  <div class="clearfix"></div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        公司动态        
      </h4>      
    </div>
    <div class="panel-body">
      <?php $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[16],'colnum'=>8,'nodate'=>true));?>
    </div>
  </div>
</div>
<div class="col-xs-9 col-sm-9 no-padding">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        推荐产品
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
        讲师团队        
      </h4>      
    </div>
    <div class="panel-body">
      <?php $this->renderPartial('//module/listLecturer',array('areaid'=>0));?>
    </div>
  </div>
  <div class="clearfix"></div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        营销团队        
      </h4>      
    </div>
    <div class="panel-body">
      <?php $this->renderPartial('//module/listLecturer',array('areaid'=>0));?>
    </div>
  </div>
</div>