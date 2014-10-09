<div class="top-nav">
    <a href="#" class="logo"></a>
    <div class="top-nav-info" id="top-nav-info">
      <?php echo CHtml::link('首页',zmf::config('baseurl')); ?>
        <?php if (Yii::app()->user->isGuest) { ?>            
        <?php } else { ?>
            <?php echo CHtml::link($this->userInfo['truename'], array('user/index', 'id' => Yii::app()->user->id));
            echo CHtml::link('设置',array('user/config')); 
            if($this->isAdmin){
                echo CHtml::link('后台管理',array('admin/index/index')); 
            }
            echo CHtml::link('退出', array('site/logout')); ?>
        <?php } ?>                        
    </div>
</div>
<div id="notification" class="floatfixed"></div>