<div class="aside">
    <div class="mod" id="aside_face">
        <div class="bd">
            <div class="site_pic">
                <img alt="的头像" src="http://www.newsoul.cn/attachments/posts/600/1021/531efc64c162f.jpeg">
            </div>
            <div class="desc">
                
            </div>
            <div class="site-info">
            </div>
            <div class="site_action config">
                <?php echo CHtml::link('设置', array('user/config'), array('class' => 'list_btn '.(Yii::app()->getController()->getAction()->id=='config'?'current':''))); ?>
                <?php echo CHtml::link('轮播', array('user/list','table'=>'ads'), array('class' => 'list_btn '.($_GET['table']=='ads'?'current':''))); ?>
                <?php $columns=Columns::userColumns();if(!empty($columns)){foreach($columns as $val){?>
                    <?php echo CHtml::link($val['title'], array('user/list','colid'=>$val['id']), array('class' => 'list_btn '.($_GET['colid']==$val['id']?'current':''))); ?>
                <?php }}?>
                <?php echo CHtml::link('客服', array('user/list','table'=>'questions'), array('class' => 'list_btn '.($_GET['table']=='questions'?'current':''))); ?>
                <?php echo CHtml::link('表盘', array('user/stat'), array('class' => 'list_btn '.(Yii::app()->getController()->getAction()->id=='stat'?'current':''))); ?>
                <?php echo CHtml::link('查看', array('mobile/index','uid'=>$this->uid), array('class' => 'list_btn ','target'=>'_blank')); ?>
            </div>
        </div>
    </div>        
</div>