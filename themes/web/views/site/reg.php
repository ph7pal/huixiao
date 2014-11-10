<?php $form=$this->beginWidget('CActiveForm', array(
                'id'=>'users-addUser-form',
                'enableAjaxValidation'=>false,
            'enableClientValidation'=>true
        )); ?>
  <div id="login-header" class="win900">
      <a href="#" id="logo" style="left: 20px;">
          <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/logo.png" alt="" /></a>
      <div id="cityname" class="loginname" style="left: 208px;"><span>新用户注册</span></div>
      <div id="logintext" style="right: -10px;"><a href="<?php echo zmf::config('baseurl');?>">返回首页</a>|<a href="#">帮助</a></div>
  </div>

  <div class="cb win900">
      <div class="sign-left" style="position: relative;margin-top:30px;">
        <?php echo $form->errorSummary($model); ?>  
              <div class="control-group">
                  <div class="clearfix">
                      <label class="control-label" for="inputWarning"><span class="red-mark">*</span>登录昵称：</label>
                      <div class="controls ui-form-item " type="tel" data-index="0">
                          <?php echo $form->textField($model,'username',array('class'=>'error','placeholder'=>'用于登录')); ?>
                          <span class="help-inline lin9"><?php echo $form->error($model,'username'); ?></span>
                      </div>
                  </div>
              </div>
              <div class="control-group">
                  <div class="clearfix">
                      <label class="control-label" for="inputWarning"><span class="red-mark">*</span>真实姓名：</label>
                      <div class="controls ui-form-item " type="tel" data-index="0">
                          <?php echo $form->textField($model,'truename',array('class'=>'error','placeholder'=>'用于显示')); ?>
                          <span class="help-inline lin9"><?php echo $form->error($model,'truename'); ?></span>
                      </div>
                  </div>
              </div>
              <div class="control-group clearfix">
                  <label class="control-label" for="inputWarning"><span class="red-mark">*</span>登录密码：</label>
                  <div class="controls ui-form-item " required="" min="6" max="16" data-index="1">
                      <?php echo $form->passwordField($model,'password',array('class'=>'form-control','placeholder'=>'请输入密码')); ?>
                      <span class="help-inline lin9"><?php echo $form->error($model,'password'); ?></span>
                  </div>
              </div>
              <div class="control-group clearfix">
                  <label class="control-label" for="inputWarning"><span class="red-mark">*</span>电子邮箱：</label>
                  <div class="controls ui-form-item" required="" ajaxurl="/register/ChkUn-type-1.html" min="4" max="16" data-index="3">
                      <?php echo $form->textField($model,'email',array('class'=>'form-control','placeholder'=>'请输入常用邮箱')); ?>
                      <span class="help-inline lin9"><?php echo $form->error($model,'email'); ?></span>
                  </div>
              </div>
              <div class="control-group">
                  <div class="clearfix">
                      <label class="control-label" for="inputWarning"><span class="red-mark">*</span>注册类型：</label>
                      <div class="controls ui-form-item">
                          <select name="credit" id='credit'>
                            <option value=''>--请选择--</option>
                            <?php foreach(tools::userCredits() as $list){?>
                            <option value="<?php echo $list['type'];?>"><?php echo $list['title'];?></option>
                            <?php }?>
                          </select>
                          <span class="help-inline lin9"></span>
                      </div>
                  </div>
              </div>
              <div class="control-group">
                  <div class="clearfix">
                      <label class="control-label" for="inputWarning">所在区域：</label>
                      <div class="controls ui-form-item">
                          <?php $this->renderPartial('//common/excity',array('info'=>$info['localarea'],'blocked'=>$blocked));?>
                          <span class="help-inline lin9"></span>
                      </div>
                  </div>
              </div>
        

              <div class="control-group clearfix">
                    <p class="sub-btn">
                      <button class="butn max-butn max-butn-orange" type="submit" onclick="return submitCheck();" style="color: #fff;"><i></i>同意协议并注册</button>
                    </p>
              </div>
              
          <div style="position: absolute; right: 10px; top: 10px;">
              <p><strong class="f14">已经注册过？</strong><a class="butn" href="<?php echo Yii::app()->createUrl('site/login');?>"><i></i>&nbsp; 登录 &nbsp;</a></p>
          </div>
      </div>

  </div>

<?php $this->endWidget(); ?>
<script>
function submitCheck(){
  var type=$('#credit').val();
  if(type=='' || typeof type=='undefined'){
    alert('请选择注册类型');
    return false;
  }
  return true;
}
</script>