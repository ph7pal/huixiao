<div class="w_960 content">
  <div class="position"><s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; 评价<?php echo $title;?></span></div>
  <div class="wrapper wrapper_comm">
      <div class="hoscomm">
          <h3 class="hoscomm_h3 fyahei f700"><?php echo $title;?></h3>
          <h4 class="hoscomm_h4 f12">为其他用户做宝贵的参考，让公司服务更上一层楼 </h4>
          <div class="line"></div>
          <p class="important mar_t10">重要提示：请您在完善认证资料后再评价，这样才更具真实性</p>
          <div class="form">

          <?php $form=$this->beginWidget('CActiveForm', array(
              'id'=>'score-score-form',
              'enableAjaxValidation'=>false,
          )); ?>
            <div class="hoscomm_wrap mar_t20 clearfix">
              <?php echo $form->errorSummary($model); ?>
              <?php echo $form->hiddenField($model,'classify'); ?>
              <dl>
                  <dt><i class="red">*</i>做会产品</dt>
                  <dd><?php echo $form->textField($model,'score',array('class'=>'ipt_txt w_420','placeholder'=>'请输入您的做会产品，多个项目用逗号分开...'));?></dd>
              </dl>
              <dl>
                  <dt>销售金额</dt>
                  <dd><?php echo $form->textField($model,'score1',array('class'=>'ipt_txt w_110','placeholder'=>'请输入数字'));?>&nbsp;&nbsp;元<span class="gray">本次销售金额</span></dd>
              </dl>
              <dl>
                  <dt><i class="red">*</i>做会时间</dt>
                  <dd class="sel_dd">
                    <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array('model'=>$model,
            	'attribute'=>'score2','language'=>'zh-cn','options'=>array('showAnim'=>'fadeIn',),'htmlOptions'=>array('readonly'=>'readonly','class'=>'ipt_txt w_110')));?>
                      <span class="gray">做会时间</span></dd>
              </dl>
              <dl>
                  <dt><?php echo $form->labelEx($model,'score3'); ?></dt>
                  <dd>
                    <?php $this->widget('CStarRating',array('model'=>$model,'attribute'=>'score3','maxRating'=>10,'starCount'=>5,'readOnly'=>false,));?>
                    <p><?php echo $form->error($model,'score3'); ?></p>
                  </dd>
              </dl>
              <dl>
                  <dt><?php echo $form->labelEx($model,'score4'); ?></dt>
                  <dd>
                    <?php $this->widget('CStarRating',array('model'=>$model,'attribute'=>'score4','maxRating'=>10,'starCount'=>5,'readOnly'=>false,));?>
                    <p><?php echo $form->error($model,'score4'); ?></p>
                  </dd>
              </dl>
              <dl>
                  <dt><?php echo $form->labelEx($model,'score5'); ?></dt>
                  <dd>
                    <?php $this->widget('CStarRating',array('model'=>$model,'attribute'=>'score5','maxRating'=>10,'starCount'=>5,'readOnly'=>false,));?>
                    <p><?php echo $form->error($model,'score5'); ?></p>
                  </dd>
              </dl>
              <dl>
                  <dt><?php echo $form->labelEx($model,'score6'); ?></dt>
                  <dd>
                    <?php $this->widget('CStarRating',array('model'=>$model,'attribute'=>'score6','maxRating'=>10,'starCount'=>5,'readOnly'=>false,));?>
                    <p><?php echo $form->error($model,'score6'); ?></p>
                  </dd>
              </dl>
              <dl>
                  <dt><i class="red">*</i>评价公司</dt>
                  <dd>
                    <?php echo $form->textArea($model,'score7',array('class'=>'comm_hospital'));?>
                  </dd>
                  <dt>&nbsp;</dt>
                  <dd style="margin-top:5px;">1、详细的评价能更好的帮助求产品者了解情况，指导公司改进服务<br>2、如果您发布了不实评论，对公司名誉造成了侵害，需承担法律责任</dd>
              </dl>
              <dl>
                  <dt>做会讲师</dt>
                  <dd>
                    <?php echo $form->textField($model,'score8',array('class'=>'ipt_txt w_110'));?>
                  </dd>
              </dl>
              <dl class="hoscomm_upload">
                  <dt>上传图片</dt>
                  <dd class="ishas_upload_tool">
                      <?php $this->renderPartial('//common/_noModelUpload',array('type'=>'score','fieldName'=>'logo','multi'=>true,'keyid'=>$model->belongid));?>
                      <br/><span style="margin-top:5px;">上传现场图片增加真实性，最多3张，可多选，图片是公开的，任何人都可以看到</span>
                  </dd>
                  <dt>&nbsp;</dt>
                  
              </dl>
              <div class="clearfix"></div>
              <div class="mar_t20 line"></div>
              <div class="mar_t20">
                  <?php echo CHtml::submitButton('',array('class'=>'btn_submit_comm')); ?>
              </div>
          </div>
          <?php $this->endWidget(); ?>
          </div><!-- form -->
      </div>
  </div>
</div>