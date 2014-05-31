<div class="top-nav">
    <a href="#" class="logo"></a>
    <div class="top-nav-info" id="top-nav-info">
        <?php if (Yii::app()->user->isGuest) { ?>            
        <?php } else { ?>
            <?php echo CHtml::link($this->userInfo['truename'], array('user/index', 'id' => 2));
            echo CHtml::link('设置',array('user/config')); 
            echo CHtml::link('退出', array('site/logout')); ?>
        <?php } ?>                        
    </div>
</div>
<div id="notification" class="floatfixed"></div>