<div class="w_960 content">
    <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<?php echo CHtml::link('首页',zmf::config('baseurl'));?>&gt; <?php echo CHtml::link('招聘信息',array('jobs/index'));?>&gt; <?php echo $info['title'];?></span></div>
    <div class="terminalpage clearfix" style="position: relative;">
        <!--左侧导航-->
        <div class="urgent-terminalpage-left" style="">
            <div class="urgent-terminalpage-left-bgimg">
                <div class="urgent-left-air">
                </div>
                <h1>您还可以</h1>
                <ul>
                    <li class="urgent-gray-icon left-icon1">
                      <?php echo CHtml::link('查看该公司其他职位',array('jobs/index','uid'=>$info['uid']));?>
                    </li>
                    <!--li class="urgent-gray-icon left-icon2">
                        <a target="_blank" href="javascript:void(0)">收藏该职位</a>
                    </li-->
                    <!--li class="urgent-gray-icon left-icon3">
                        <a target="_blank" href="javascript:void(0)">推荐给朋友</a>
                    </li-->
                </ul>
            </div>
        </div>
        <!--右侧职位信息-->
        <div class="urgent-terminalpage-right" style="margin-left: 232px; width:720px;">
            <div class="urgent-terminalpage-right-main">
                <!--招聘信息 开始-->
                <div class="terminalpage-left-top clearfix">
                    <div class="top-left">
                        <table class="terminalpage-table" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td colspan="4">
                                    <h1><?php echo $info['title'];?></h1>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="4">
                                    <h2>
                                        <?php echo $info['gs_title'];?>
                                    </h2>
                                </td>
                            </tr>


                        </table>
                        <table class="terminalpage-table table-margin" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td class="color-gray" width="75" valign="top">工作经验：</td>
                                <td valign="top" width="175"><?php echo Jobs::jingyan($info['gz_jingyan']);?></td>
                                <td valign="top" class="color-gray" width="75">工作性质：</td>
                                <td valign="top" width="175"><?php echo $info['gz_xingzhi'];?></td>
                            </tr>
                            <tr>
                                <td class="color-gray" valign="top">最低学历：</td>
                                <td valign="top"><?php echo Jobs::xueli($info['gz_zdxueli']);?></td>
                                <td class="color-gray" valign="top">管理经验：</td>
                                <td valign="top"><?php echo Jobs::jingyan($info['gz_gljy']);?></td>
                            </tr>
                            <tr>
                                <td class="color-gray" valign="top">职位月薪：</td>
                                <td valign="top"><?php echo Jobs::money($info['gz_xinzi']);?></td>
                                <td class="color-gray" valign="top">招聘人数：</td>
                                <td valign="top"><?php echo $info['gz_renshu'];?></td>
                            </tr>
                            <tr>
                                <td class="color-gray" valign="top">工作地点：</td>
                                <td valign="top">
                                    <span id="positionCityCon"><?php echo $info['gz_didian'];?></span>
                                </td>
                                <td class="color-gray" valign="top">职位类别：</td>
                                <td valign="top"><?php echo $info['gz_zhiwei'];?></td>
                            </tr>
                            <tr>
                                <td class="color-gray" valign="top" style="line-height: 40px;">职位亮点：</td>
                                <td valign="top" colspan="3">
                                  <div class="welfare-tab-box" style="width: 400px;">
                                    <span><?php if(!empty($info->fulis)){foreach($info->fulis as $fuli){echo $fuli->info->title.'&nbsp;&nbsp;';}}?></span>
                                  </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="top-right">
                        <table>
                            <tr>
                                <td class="color-gray">发布日期：</td>
                                <td><span id="span4freshdate"><?php echo date('Y-m-d',$info['cTime']);?></span></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <!--招聘信息 结束-->
                <!--div class="urgent-button">
                    <button class="urgent-button-img"
                        id="applyVacButton2" title="申请职位">
                    </button>
                </div-->
                <!--职位描述 开始-->
                <div class="terminalpage-main clearfix">
                    <div class="urgent-terminalpage-title">
                        <span class="urgent-title-name">职位描述</span>
                    </div>
                    <div class="terminalpage-content">
                        <?php echo $info['gz_miaoshu'];?>
                    </div>
                    <!--button class="urgent-button-img" id="applyVacButton1" title="申请职位"></button-->
                </div>
                <!--职位描述 结束-->
                <!--招聘公司信息 开始-->
                <div class="terminalpage-main clearfix">
                  <div class="urgent-terminalpage-title">
                      <span class="urgent-title-name">公司介绍</span> 
                      <span class="span-right">
                        <?php echo CHtml::link('该公司其他职位',array('jobs/index','uid'=>$info['uid']),array('class'=>'color-blue'));?>
                      </span>
                  </div>
                  <div class="terminalpage-content clearfix">
                      <div class="name-icon">
                          <a target="_blank" class="color-blue" href="<?php echo $info['gs_zhuye'];?>" ><?php echo $info['gs_title'];?>
                          </a>
                      </div>
                      <div class="content-ul clearfix">
                          <span class="color-gray">公司地址：</span><?php echo $info['gs_didian'];?>
                  <br />
                          <span class="color-gray">公司规模：</span><?php echo $info['gs_guimo'];?><span class="color-gray">|
                          </span><span class="color-gray">公司性质：</span><?php echo $info['gs_xingzhi'];?> <span class="color-gray">|
                          </span><span class="color-gray">公司行业：</span><?php echo $info['gs_guimo'];?>
                      </div>
                      <p><?php echo $info['gs_miaoshu'];?></p>
                  </div>
                  <div class="terminalpage-content clearfix">
                    <h1>联系方式</h1>
                    <h2>
                      <div>
                      <?php if($info['gs_title']!=''){?><div>公司名称：<?php echo $info['gs_title'];?></div><?php }?>
                      <?php if($info['gs_didian']!=''){?><div>公司地址：<?php echo $info['gs_didian'];?></div><?php }?>
                      <?php if($info['gz_contactor']!=''){?><div>联系人：<?php echo $info['gz_contactor'];?></div><?php }?>
                      <?php if($info['gz_contact']!=''){?><div>联系电话：<?php echo $info['gz_contact'];?></div><?php }?>            
                      <?php if($info['gs_zhuye']!=''){?><div>公司主页：<?php echo $info['gs_zhuye'];?></div><?php }?>
                      </div>
                    </h2>

                    </div>

              </div>
                <!--招聘公司信息 结束-->
            </div>
            <div class="urgent-bottom-list clearfix">
            </div>
        </div>
    </div>

</div>