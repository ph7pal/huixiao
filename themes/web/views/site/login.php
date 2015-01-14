<style type="text/css">
.slideBox{ width:548px; height:250px; overflow:hidden; position:relative; border:1px solid #ddd;  }
.slideBox .hd{ height:15px; overflow:hidden; position:absolute; right:5px; bottom:5px; z-index:1; }
.slideBox .hd ul{ overflow:hidden; zoom:1; float:left;  }
.slideBox .hd ul li{ float:left; margin-right:2px;  width:15px; height:15px; line-height:14px; text-align:center; background:#fff; cursor:pointer; }
.slideBox .hd ul li.on{ background:#f00; color:#fff; }
.slideBox .bd{ position:relative; height:100%; z-index:0;   }
.slideBox .bd li{ zoom:1; vertical-align:middle; }
.slideBox .bd img{ width:548px; height:250px; display:block;  }
</style>
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'login-form',
	'enableAjaxValidation'=>false,
        'enableClientValidation'=>true
)); ?>
<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . "/common/js/jquery.SuperSlide.2.1.1.js", CClientScript::POS_HEAD);?>
    <div id="login-header" class="win900">
        <a href="<?php echo zmf::config('baseurl');?>" id="logo">
            <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/logo.png" alt="" /></a>
        <div id="cityname" class="loginname" style="left: 208px;"><span>用户登录</span></div>
        <div id="logintext" style="right: -10px;"><a href="<?php echo zmf::config('baseurl');?>">返回首页</a>|<a href="#">帮助</a></div>
    </div>
    <div class="cb win900">
        <div id="conleft" style="position: relative; height: 480px;">
                <div id="slideBox" class="slideBox">
                        <div class="hd">
                            <ul>
                                <?php if(!empty($flashImgs)){?>
                                <?php foreach($flashImgs as $key=>$tmp){?>    
                                <li><?php echo ($key+1);?></li>
                                <?php }?>                           
                                <?php }?>
                            </ul>
			</div>
                        <div class="bd">
                                <ul>
                               <?php if(!empty($flashImgs)){?>
                                  <?php foreach($flashImgs as $key=>$tmp){?>                            
                                    <li><a href="javascript:;" target="_blank"><img src="<?php echo $tmp;?>"></a></li>
                                  <?php }?>                           
                              <?php }?>
                                </ul>
                        </div>
                </div>
                <script id="jsID" type="text/javascript">
                    jQuery(".slideBox").slide({mainCell:".bd ul",effect:"left",autoPlay:true});
                </script>
            <div style="height: 100px; width: 550px; position: absolute; top: 300px">
                <div class="tab_module nomartop" id="TabAdS01">
                    <div class="hd">
                        <ul class="clearfix tab-hd">
                            <li class="select">重点推荐<s class="s1"></s><s class="s2"></s></li>
                        </ul>
                    </div>
                    <div class="focus">
                        <ul class="textList" style="height: 110px">
                          <?php if(!empty($topPosts)){foreach($topPosts as $topPost){?>
                            <li><?php echo CHtml::link($topPost['title'],array('posts/show','id'=>$topPost['id']),array('target'=>'_blank'));?></li>
                          <?php }}?>  
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="conright">
            <div class="scrool-bg">
                <div class="login_name" id="login_name"><b id="login_tab_orig" onclick="clickLog('from=login_orig');">账号密码登录<i class="underline"></i></b></div>
                <div class="loginbox">
                    <div id="tipDiv"></div>
                    <table>
                        <tr id="usernametr">
                            <td><span class="logpic">账户名</span></td>
                            <td>
                              <?php echo $form->textField($model,'username', array('class'=>'inp inw c_ccc useplaceholder','placeholder'=>'用户名/Email')); ?>
                                </td>
                        </tr>
                        <tr id="passwordtr">
                            <td><span class="logpic">密码</span></td>
                            <td>
                              <?php echo $form->passwordField($model,'password', array('class'=>'inp inw c_ccc useplaceholder','placeholder'=>'请输入密码')); ?>
                                </td>
                        </tr>
                        <tr>
                            <td><span class="logpic">验证码</span></td>
                            <td>
                              <?php echo $form->textField($model,'verifyCode', array('class'=>'inp inw c_ccc useplaceholder','placeholder'=>'请输入验证码')); ?>
                              <?php echo $form->error($model,'verifyCode'); ?>
                            </td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><?php $this->widget ( 'CCaptcha', array ('showRefreshButton' => true, 'clickableImage' => true, 'buttonType' => 'link', 'buttonLabel' => '换一张', 'imageOptions' => array ('alt' => '点击换图', 'align'=>'absmiddle'  ) ) );?></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="padding: 0pt;">
                                <input type="checkbox" style="vertical-align: middle;" id="coks" value="on" name="remember" />
                                <label class="logintip" for="coks">下次自动登录 (公共场所慎用)</label>
                            </td>
                        </tr>
                        <tr id="logintr">
                            <td></td>
                            <td>
                                <span class="butt" style="line-height: 34px;">
                                  <input type="submit" name="btnSubmit" value="登录" class="btns" id="btnSubmit" />
                                </span><?php echo CHtml::link('没有账号？免费注册',array('site/reg'));?>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--scrool bg-->
            <div class="clear"></div>
        </div>
        <div class="c"></div>
    </div>
<?php $this->endWidget(); ?>
