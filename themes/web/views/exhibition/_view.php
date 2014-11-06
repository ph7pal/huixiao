<div class="module_x">
  <!--数据头部--公司名称-->
  <div class="hd clearfix">
      <span class="title">[<?php echo $data['localname'];?>]<strong><a href="# " target="_blank"><?php echo $data['companyname'];?></a></strong></span>
      <s class="s shiming">实名认证</s><s class="s shiqiang">十强推荐公司</s><span class="topic png_ie6">no.<em>1</em></span>
  </div>
  <div class="bd">
      <div class="grid_01 clearfix">
          <!--左侧公司简介-->
          <div class="col_main">
              <div class="main_wrap">
                  <div class="clearfix">
                      <div class="left">
                      	<?php echo CHtml::link(zmf::avatar($data['uid'],'small').'<span class="title">'.$data['companyname'].'</span>',array('exhibition/view','id'=>$data['id']),array('target'=>'_blank'));?>
                         <div class="tel"><?php echo $data['contactmobile'];?></div>
                      </div>
                      <div class="right">
                          <h3>公司简介：</h3>
                          <p><?php echo $data['description'];?></p>
                          <h3>公司地址：</h3>
                          <p><?php echo $data['address'];?></p>                          
                      </div>
                  </div>
                  <div class="case_list">
                      <ul class="clearfix">
                        <?php $zhanhuis=$data['zhanhuis'];if(!empty($zhanhuis)){foreach($zhanhuis as $zhanhui){?>
                          <li class="item_in"><a href="<?php echo Yii::app()->createUrl('zhanhui/view',array('id'=>$zhanhui['id']));?>" target="_blank" class="link">
                              <img src="<?php echo $zhanhui['faceurl'];?>" alt="<?php echo $zhanhui['title'];?>" width="135" height="88" /><span class="title"><?php echo $zhanhui['title'];?></span>  </a></li>         
                        <?php }}?>      
                      </ul>
                  </div>
                  <!-- 网友评价 -->
              </div>
          </div>
      </div>
  </div>
</div>