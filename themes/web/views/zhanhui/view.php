<div class="w_960 content">
    <div class="position">
        <s class="s" title="当前位置"></s><span class="bd">您当前的位置：<?php echo CHtml::link('首页',zmf::config('baseurl'));?>&gt; <?php echo CHtml::link('展会',array('zhanhui/index'));?>&gt; <?php echo $info['title'];?></span>
    </div>
    <div class="tuangou">
    		<div class="advs">
    			<?php if($info['attachid']){?>
                	<img width="960" src="<?php echo $info['attachid'];?>" alt="<?php echo $info['title'];?>">
              <?php }?>
        	</div>
        <div class="grid_02 clearfix">
            <div class="col_main">
                <div class="main_wrap">
                    <div class="top_box">
                      <h1><?php if($info['status']!=Posts::STATUS_PASSED){?><span class="sh">[活动结束]</span><?php }?><?php echo $info['title'];?></h1>
                        <table class="table_x" width="100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <em>所在区域：</em><?php $selected=  Area::getWholeOne($info['localarea']);echo $selected;?>
                                </td>
                                <td>
                                    <em>活动时间：</em><span class="time_1"><?php echo date('Y年m月d日',$info['start_time']);?></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <em>活动地点：</em><?php echo $info['didian'];?>
                                </td>
                                <td>
                                  <?php 
                                  $days=0;
                                  if($info['expired_time']>time()){
                                    $days=floor(($info['expired_time']-time())/86400);
                                  }?>
                                  <s class="clock"></s>距报名截止还有<span class="day"><?php echo $days;?></span>天
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <em>报名截止：</em><span class="time_2"><?php echo date('Y年m月d日',$info['expired_time']);?></span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr style="line-height:25px">
                                            <td nowrap="nowrap" valign="top">
                                                <em>活动简介：</em>
                                            </td>
                                            <td align="left"><?php echo $info['description'];?></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <div class="yibaoshu"><?php echo $info['canyu'];?></div>
                        <?php if($info['status']!=Posts::STATUS_PASSED){?><s class="i_jiesu png_ie6">圆满结束</s><?php }?>
                    </div>
                </div>
            </div>
            <!--div class="col_sub">
                <div class="gg_maps">
                    <div style="width: 280px; height: 277px;"></div>
                </div>
            </div-->
        </div>
        <div class="grid_01 clearfix" id="ksbm">
            <div class="col_main">
                <div class="main_wrap">
                    <div class="tg_m" style="width: 470px;">
                        <div class="hd">
                            快速报名
                        </div>
                        <div class="bd">
                            <div style="">
                              <?php if($info['expired_time']<=time()){?>
                                <p style="padding-top: 30px; background-color: #fff; margin: -5px 0px 0 0;text-align: center; ">抱歉，本次活动报名已结束</p>
                                <p style="text-align: center; ">欢迎您下次积极参与</p>
                              <?php }elseif($this->canyu){?>
                                <p style="padding-top: 30px; background-color: #fff; margin: -5px 0px 0 0;text-align: center; ">感谢您的参与</p>
                                <p style="text-align: center; ">我们将尽快核实信息并通知您下一步事宜</p>
                              <?php }else{?>
                                    <?php $this->renderPartial('_canyu',array('model'=>$model));?>
                              <?php }?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col_sub">
                <div class="tg_m">
                    <div class="hd">
                        已报名的名单
                    </div> 
                    <div class="bd">
                        <ul id="mulitline1">
                          <?php if(!empty($users)){?>
                          <?php foreach($users as $user){?>
                          <?php if($this->showInfo){?>  
                            <li><?php echo $user['username'];?> ------ <?php echo $user['phone'];?> ------ <?php echo $user['email'];?></li>
                          <?php }else{?>
                            <li><?php echo tools::hideWord($user['username']);?> ------ <?php echo tools::hideWord($user['phone']);?> ------ <?php echo tools::hideWord($user['email']);?></li>
                          <?php }?>
                          <?php }?>
                            <?php if($this->showInfo){?>
                            <P style="text-align: center"><?php echo CHtml::link('查看全部名单',array('user/show','action'=>'zhanhui','logid'=>$info['id']));?></P>
                            <?php }?>
                          <?php }?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg_box_s">
            <div class="hd  clearfix">
                <a href="#" class="top">返回顶部</a>展会详情
            </div>
            <div class="bd hd_xiangqing">
              <p><?php echo zmf::text($info['id'],$info['content'],false);?></p>
            </div>
        </div>    
    </div>
</div>