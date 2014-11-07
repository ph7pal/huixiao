<div class="module_x">
  <!--数据头部--公司名称-->
  <div class="hd clearfix">
      <span class="title">[<?php echo $data['localname'];?>]<strong><a href="# " target="_blank"><?php echo $data['companyname'];?></a></strong></span>
      <s class="s shiming">实名认证</s><s class="s shiqiang">十强推荐公司</s>
  </div>
  <div class="bd">
      <div class="grid_01 clearfix">
          <!--左侧公司简介-->
          <div class="col_main">
              <div class="main_wrap">
                  <div class="clearfix">
                      <div class="left">
                      	<?php echo CHtml::link(zmf::avatar($data['uid'],'big').'<span class="title">'.$data['companyname'].'</span>',array('qiye/view','id'=>$data['id']),array('target'=>'_blank'));?>
                         <div class="tel"><?php echo $data['contactmobile'];?></div>
                      </div>
                      <div class="right">
                          <h3>公司简介：</h3>
                          <p><?php echo $data['description'];?></p>
                          <h3>公司地址：</h3>
                          <p><?php echo $data['address'];?></p>
                          <p class="f14">拥有讲师：<em><?php echo $data['lecturers'];?>位</em>&#12288;公司产品：<em><?php echo $data['goods'];?>件</em></p>
                      </div>
                  </div>
                  <div class="case_list">
                      <ul class="clearfix">
                        <?php if(!empty($data['goodsLists'])){?>
                        <?php foreach($data['goodsLists'] as $one){?>
                          <li class="item_in"><a href="<?php echo Yii::app()->createUrl('goods/view',array('id'=>$one['id']));?>" target="_blank" class="link"><img src="<?php echo $one['faceurl'];?>" alt="" width="135" height="88" /><span class="title"><?php echo $one['title'];?></span></a></li>
                        <?php }?>
                        <?php }?>
                      </ul>
                  </div>
                  <!-- 网友评价 -->
                  <div class="border box_section " id="evaluation" >
                   
                        <div class="hoscomm_total"  >
                          <dl class="hoscomm_dl clearfix">
                              <dt >总&nbsp;评&nbsp;价</dt>
                              <dd >
                                <?php if($data['scorer']>3){?>
                                <em class="starline"><b style="width: 92%;"></b><i></i></em><span class="fraction"><?php echo $data['score'];?></span> <span class="gray666 v">(<a target="_blank" href="#"><?php echo $data['scorer'];?>名网友点评</a>)</span>
                                <?php }else{?>
                                <span>评分人数太少</span>
                                <?php }?>
                              </dd>
                          </dl>
                      </div>
                      <div class="hoscomm_list clearfix" style="margin-top:0px" >
                          <div class="hoscomm_btn fr" >
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