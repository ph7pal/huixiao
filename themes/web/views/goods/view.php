<div class="w_960 content">
    <div class="position">
        <s class="s" title="当前位置"></s><span class="bd">您当前的位置：<?php echo CHtml::link('首页',zmf::config('baseurl'));?>&gt; <?php echo CHtml::link('产品展示',array('goods/index'));?>&gt; <?php echo $info['title'];?></span>
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
                            <p><?php echo zmf::text($info['id'], $info['desc'],false);?></p>
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
                          <?php if($this->showMessage){?>
                            <font>联系方式：<?php echo $contact['contactname'];?> <?php echo $contact['contactmobile'];?></font>
                            <p>请珍惜您的特权，请勿泄露及传播该信息。</p>
                          <?php }else{?>                            
                            <font>请在下方留言，提交后将自动显示联系方式 </font>
                          <?php }?>
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
                                  <?php if(!$this->isSelf){?>
                                  
                                  <?php if($this->canMessage){?>
                                    <h3>请认真填写你的信息和需求，好获取更好的支持。</h3>
                                    <?php $this->renderPartial('//message/_form', array('model'=>$model)); ?>
                                  <?php }else{?>
                                    <?php if($this->showMessage){?>
                                    <h3>您已留言过，隐藏信息将为您显示。</h3>
                                    <?php }else{?>
                                    <h3>为保证数据的真实性，请先登录并填写认证信息。</h3>
                                    <?php }?>
                                    <?php }?>
                                  <?php }else{?>
                                  <?php if(!empty($info->messages)){$messages=$info->messages;?>  
                                   <?php foreach($messages as $message){$this->renderPartial('//message/_view',array('data'=>$message));}?> 
                                  <?php }else{?>
                                    <h3>暂无留言。</h3>
                                  <?php }?>
                                  <?php }?>
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
                <?php if(!empty($newProducers)){?>
                <div class="subRNews">
                    <h3><span style="float: right; font-weight: normal"><?php echo CHtml::link('更多&gt;&gt;',array('qiye/index'),array('target'=>'_blank'));?></span>最新加入公司</h3>
                    <ul>
                      <?php foreach($newProducers as $np){?>
                        <li>·<?php echo CHtml::link($np['companyname'],array('qiye/view','id'=>$np['id']),array('target'=>'_blank'));?><span style="margin-left: 10px;"></span></li>
                      <?php }?>
                    </ul>
                </div>
                <?php }?>
            </div>
            <div style="clear: both"></div>
        </div>
    </div>

</div>