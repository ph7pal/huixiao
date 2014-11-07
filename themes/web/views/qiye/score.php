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
                  <dt><?php echo $form->labelEx($model,'score'); ?></dt>
                  <dd>
                    <?php $this->widget('CStarRating',array('model'=>$model,'attribute'=>'score','maxRating'=>10,'starCount'=>5,'readOnly'=>false,));?>
                    <p><?php echo $form->error($model,'score'); ?></p>
                  </dd>
              </dl>
              <dl>
                  <dt><?php echo $form->labelEx($model,'score1'); ?></dt>
                  <dd>
                    <?php $this->widget('CStarRating',array('model'=>$model,'attribute'=>'score1','maxRating'=>10,'starCount'=>5,'readOnly'=>false,));?>
                    <p><?php echo $form->error($model,'score1'); ?></p>
                  </dd>
              </dl>
              <dl>
                  <dt><?php echo $form->labelEx($model,'score2'); ?></dt>
                  <dd>
                    <?php $this->widget('CStarRating',array('model'=>$model,'attribute'=>'score2','maxRating'=>10,'starCount'=>5,'readOnly'=>false,));?>
                    <p><?php echo $form->error($model,'score2'); ?></p>
                  </dd>
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