<div class="w_960 content">
    <div class="position">
        <s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <?php echo CHtml::link('产品展示',array('goods/index'));?>&gt; <?php echo $info['title'];?></span>
    </div>
    <div class="w_960">
        <div style="margin-top: 8px;">
            <div id="subProleft0">
                <div id="subProleft">
                    <div class="pathDir">
                        <h4>产品信息</h4>
                    </div>

                    <div id="proDetail">
                        <!--商品图片展示 开始-->
                        <div style="padding: 8px;">
                            <h1 style="font-size: 18px"><?php echo $info['title'];?></h1>
                            <!--商品大图片展示 开始-->
                            <div class="proPic">
                                <table width="600" border="0" cellpadding="0" cellspacing="0">
                                  <?php if(!empty($faceurls)){foreach($faceurls as $faceurl){?>
                                  <tr>
                                        <td align="center" valign="middle">
                                            <img alt="<?php echo $info['title'];?>" src="<?php echo $faceurl;?>" />
                                        </td>
                                  </tr>
                                  <?php }}?>                                    
                                </table>
                            </div>
                            <!--商品小图片图片展示 开始-->                            
                            <!--商品图片展示 开始-->
                        </div>
                        <div style="height: 10px; overflow: hidden"></div>
                        <?php if($info['desc']!=''){?>
                        <!--产品说明 开始-->
                        <div class="proTBg">
                            <h3>产品说明</h3>
                            <p><?php echo $info['desc'];?></p>
                        </div>
                        <!--产品说明 结束-->
                        <?php }?>
                        <?php if($info['desc2']!=''){?>
                        <!--代理需求 开始-->
                        <div class="proTBg">
                            <h3>代理要求 </h3>
                            <p><?php echo $info['desc2'];?></p>
                        </div>
                        <!--代理结束 结束--
                        <?php }?>
                        <?php if($info['desc3']!=''){?>
                         <!--提供支持 开始-->
                        <div class="proTBg">
                            <h3>提供支持</h3>
                            <p><?php echo $info['desc3'];?></p>
                        </div>
                        <!--提供支持 结束-->
                        <?php }?>
                        <?php if($info['desc4']!=''){?>
                        <!--产品备注 开始-->
                        <div class="proTBg">
                            <h3>产品备注</h3>
                            <p><?php echo $info['desc4'];?></p>
                        </div>
                        <!--产品备注 结束-->
                        <?php }?>
                        <!--联系方式 开始-->
                        <div class="proTBg">
                            <h3>联系方式</h3>
                            <a name="A1"></a>

                        </div>

                        <a name="lxfs" id="lxfs"></a>
                        <div id="panl1">


                            <div class='messWarn' id="liuyanxianshi">
                                <font>请在下方留言，提交后将自动显示联系方式 </font>
                            </div>


                        </div>
                        <!--联系方式 结束-->
                    </div>
                </div>
                <div style="clear: both"></div>
                <!--留言 开始-->
                <div>
                    <a name="ly" id="ly"></a>
                    <div id="cntRR">
                        <div id="NewsTop2">
                            <div id="NewsTop_tit2">
                                <p class="hoverOn">留言显示电话</p>
                            </div>
                            <div id="NewsTop_cnt2">
                                <div class="Contentbox">
                                    <h3>请认真填写你的信息和需求，好获取更好的支持。</h3>
                                    <table width="98%" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="80" align="right">客户姓名：</td>
                                            <td align="left">
                                                <input type="text" id="txtInputer" />
                                                <span style="color: Red">*</span></td>
                                            <td width="80" align="right">联系电话：</td>
                                            <td width="47%" align="left">
                                                <input type="text" id="txtTelephone" />
                                                <span style="color: Red">*</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">代理区域：</td>
                                            <td valign="middle" align="left" height="29" class="style1">
                                                <select name="ddlprovince" id="ddlprovince" style="width: 85px">
                                                </select>
                                                <select name="ddlcity" id="ddlcity" style="width: 85px">
                                                    <option value="">请选择</option>
                                                </select>

                                                <span style="color: Red">*</span>

                                            </td>
                                            <td align="right">团队人数：</td>
                                            <td align="left">
                                                <input type="text" />
                                            </td>
                                        </tr>

                                        <tr>
                                            <td width="11%" align="right">详细内容：<br />
                                            </td>
                                            <td colspan="4" align="left">
                                                <textarea name="txtContent" rows="5" cols="56" id="txtContent" class="textMessBg" style="color: Black">我对该产品有兴趣，想代理!</textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" valign="top" align="left" height="32">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td width="11%" height="32">&nbsp;</td>
                                                        <td width="89%">
                                                            <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/tjly.gif" id="btnSubmit" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    <div style="font-size: 12px; text-align: center; margin: 10px;">
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
                <!--留言 结束-->
            </div>
            <!--右侧资讯-->
            <div id="subright">
                <!--广告图片-->
                <?php if(!empty($likes)){?>
                <?php foreach($likes as $like){?>
                <!--推荐产品 开始-->
                <div class="subRNews">
                    <h3><?php echo CHtml::link($like['taginfo']['title'].' 相关产品',array('goods/index','tagid'=>$like['taginfo']['id']));?></h3>
                    <div class="proCont clearfix">
                        <!--数据循环开始 ,一共4条数据-->
                        <ul>
                          <?php if(!empty($like['items'])){?>
                          <?php foreach($like['items'] as $item){?>
                            <li><?php echo CHtml::link(CHtml::image($item['faceurl'],CHtml::encode($item['title'])).'<span>'.$item['title'].'</span>',array('goods/view','id'=>$item['id']),array('target'=>'_blank')); ?></li>
                           <?php }?>
                           <?php }?>     
                        </ul>
                        <!--数据循环结束-->
                    </div>
                </div>
                <!--推荐产品 结束-->
                <?php }?>
                <?php }?>
                <!--广告图片 开始-->                
                <!--广告图片 结束-->
                <div class="subRNews">
                    <h3><span style="float: right; font-weight: normal"><a href="/company/">更多&gt;&gt;</a></span>最新加入公司</h3>
                    <ul>
                        <li>·<a href="/company/18341" title="深圳市龙电安防产品有限公司" target="_blank">深圳市龙电安防产品有限公司</a><span style="margin-left: 10px;"></span></li>
                    </ul>
                </div>

            </div>
            <div style="clear: both"></div>
        </div>
    </div>

</div>