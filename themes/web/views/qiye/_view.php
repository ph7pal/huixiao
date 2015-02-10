<style>
    .img-responsive{
        max-width: 100%;
    }
</style>
<div class="module_x">
  <!--数据头部--公司名称-->
  <div class="hd clearfix">
      <span class="title">[<?php echo $data['localname'];?>]<strong><a href="<?php echo Yii::app()->createUrl('qiye/view',array('id'=>$data['id']));?>" target="_blank"><?php echo $data['companyname'];?></a></strong></span>
      <?php if($data['uid']){?><s class="s shiming">实名认证</s><?php }?><!--s class="s shiqiang">十强推荐公司</s-->
  </div>
  <div class="bd">
      <div class="grid_01 clearfix">
          <!--左侧公司简介-->
          <div class="col_main">
              <div class="main_wrap">
                  <div class="clearfix">
                      <div class="left">
                      	<?php echo CHtml::link(zmf::avatar($data['faceimg'],'nouid').'<span class="title">'.$data['companyname'].'</span>',array('qiye/view','id'=>$data['id']),array('target'=>'_blank'));?>
                         <div class="tel"><?php echo $data['contactmobile'];?></div>
                      </div>
                      <div class="right">
                          <h3>公司简介：</h3>
                          <p><?php echo zmf::subStr($data['description'],30);?></p>
                          <h3>公司地址：</h3>
                          <p><?php echo $data['address'];?></p>
                          <p class="f14">拥有讲师：<em><?php echo $data['lecturers'];?>位</em>&#12288;公司产品：<em><?php echo $data['goods'];?>件</em></p>
                      </div>
                  </div>
                  <?php if(!empty($data['goodsLists'])){?>
                  <div class="case_list">
                      <ul class="clearfix">                        
                        <?php foreach($data['goodsLists'] as $one){?>
                          <li class="item_in"><a href="<?php echo Yii::app()->createUrl('goods/view',array('id'=>$one['id']));?>" target="_blank" class="link"><img src="<?php echo $one['faceurl'];?>" alt="" width="135" height="88" /><span class="title"><?php echo $one['title'];?></span></a></li>
                        <?php }?>                        
                      </ul>
                  </div>
                  <?php }?>
                  <!-- 网友评价 -->
                  <div class="border box_section " id="evaluation" >
                   
                        <div class="hoscomm_total"  >
                          <dl class="hoscomm_dl clearfix">
                              <dt >总&nbsp;评&nbsp;价</dt>
                              <dd >
                                <?php if($data['scorer']>0){?>
                                <em class="starline"><b style="width: <?php echo 100*$data['score']/5;?>%;"></b><i></i></em><span class="fraction"><?php echo $data['score'];?></span> <span class="gray666 v">(<a href="javascript:;"><?php echo $data['scorer'];?>名网友点评</a>)</span>
                                <?php }else{?>
                                <span>评分人数太少</span>
                                <?php }?>
                              </dd>
                          </dl>
                      </div>
                      <div class="hoscomm_list clearfix" style="margin-top:0px">
                        <?php if($data['scorer']>0){?>  
                        <div class="hoscomm_list_4 fl">
                            <dl class="hoscomm_dl clearfix" style="">
                                <dt>会前安排</dt>
                                <dd><em class="starline"><b style="width: <?php echo 100*$data['score1']/5;?>%;"></b></em><span class="fraction"><?php echo $data['score1'];?></span></dd>
                            </dl>
                            <dl class="hoscomm_dl clearfix">
                                <dt>现场气氛</dt>
                                <dd><em class="starline"><b style="width: <?php echo 100*$data['score2']/5;?>%;"></b></em><span class="fraction"><?php echo $data['score2'];?></span></dd>
                            </dl>
                            <dl class="hoscomm_dl clearfix">
                                <dt>销售效果</dt>
                                <dd><em class="starline"><b style="width: <?php echo 100*$data['score3']/5;?>%;"></b></em><span class="fraction"><?php echo $data['score3'];?></span></dd>
                            </dl>
                            <dl class="hoscomm_dl clearfix">
                                <dt>售后服务</dt>
                                <dd><em class="starline"><b style="width: <?php echo 100*$data['score4']/5;?>%;"></b></em><span class="fraction"><?php echo $data['score4'];?></span></dd>
                            </dl>
                        </div>
                        <?php }?>  
                        <div class="hoscomm_btn fr">
                              <p>(为其他用户提供宝贵的参考)</p>
                             <p ><?php echo CHtml::link('',array('qiye/score','type'=>'qiye','id'=>$data['id']),array('class'=>'btn_write_comm'));?></p>
                        </div>
                    </div>                    
                      <!--评价列表-->
                  </div>
              </div>

          </div>

      </div>
  </div>
</div>