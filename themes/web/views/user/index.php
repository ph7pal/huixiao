<div class="mod">
<h3>欢迎，<?php echo $info['truename'];?>。</h3>
<?php $notice=zmf::config('noticeall');if($notice!=''){?>
<div class="alert alert-danger">
    <?php echo $notice;?>
</div>
<?php }?>
<?php if($this->validateEmail!=''){?>
<div class="alert alert-danger">
    <?php echo $this->validateEmail;?>
</div>
<?php }?>
<?php if($this->noticeInfo!=''){?>
<div class="alert alert-danger">
    <?php echo $this->noticeInfo;?>
</div>
<?php }?>
<table class="table table-hover">
<tr>
    <td>这是您的第<?php echo $info['login_count'];?>次登陆，登录信息：<?php echo date('Y-m-d H:i:s',$info['last_login_time']);?>/<?php echo long2ip($info['last_login_ip']);?>。</td>    
</tr>
<tr>
    <td>
        当前用户组：
        <?php echo UserGroup::getInfo($info['groupid'],'title');?>
        <?php echo zmf::creditIcon($this->uid);?>
    </td>    
</tr>
<tr>
    <td>邮箱：<?php echo $info['email'];?>
        <?php if(!$info['emailstatus']){$_cookie=zmf::getCookie('sendEmailTime');if($_cookie){?>
        <?php echo CHtml::button('邮件已发送，请等候'.(time()-$_cookie).'秒再重发',array('class'=>'btn btn-danger btn-xs','disabled'=>true));?>
        <?php }else{?>
        <?php echo CHtml::button('发送验证信息',array('class'=>'btn btn-danger btn-xs validate'));?>
      <script>
      $(document).ready(function(){
        $(".validate").click(function(){
          $.ajax({
              type: "POST",
              url: '<?php echo $this->createUrl('email/send',array('type'=>'validate'));?>',
              data: "YII_CSRF_TOKEN=" + csrfToken,
              beforeSend:function(){$(".validate").attr("disabled","true");},
              success: function(data) {
                  data = eval('('+data+')');
                  if(data['status']=='0'){
                    alert(data['msg']);
                    setTimeout("$('.validate').removeAttr('disabled');",10000);
                  }else{
                    alert(data['msg']);
                  }
              }
          });
        });
      });
      </script>
        <?php }}else{?>
            <button type="button" class="btn btn-success btn-xs">已验证</button>
        <?php }?>
    </td>    
</tr>
<tr>
    <td>QQ：<?php echo $info['qq'];?></td>    
</tr>
<tr>
    <td>手机：<?php echo $info['mobile'];?></td>    
</tr>
<tr>
    <td>座机：<?php echo $info['telephone'];?></td>    
</tr>
</table>
  <?php $userAside=Users::userAside($this->uid,array('user_homepage','user_stat','user_addquestion','user_setting'));if(!empty($userAside)){?>
    <h4>快捷功能</h4>
    <p>
    <?php foreach($userAside as $ua){?>
    <?php echo preg_replace("/class=\".*?\"/", "class=\"btn btn-info btn-xs\"", $ua['url']);?>
    <?php }?>
    </p>
  <?php }?>
</div>