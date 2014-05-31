<?php 
$users = UserCredit::getNews(); 
?>
<?php if (!empty($users)) {?>
<style>
    .flash-ul{ overflow:hidden; position:relative;}    
    .flash-ul .infoList li{ height:24px; line-height:24px;   }
    .flash-ul .infoList li .date{ float:right; color:#999;  }
</style>

<div class="col-xs-<?php echo $colnum;?> col-md-<?php echo $colnum;?> moduleBox">    
    <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
        <div class="panel-heading">            
            <h3 class="panel-title">
                最新认证              
            </h3>
        </div>
        <div class="panel-body">
            <div class="flash-ul">
                <div class="bd">
                    <ul class="infoList">
                        <?php foreach ($users as $key=>$ci) { ?> 
                        <li><?php echo CHtml::link(Users::getUserInfo($ci['uid'],'truename'),array('mobile/index','uid'=>$ci['uid']),array('target'=>'_blank'));?></li>
                        <li><?php echo CHtml::link(Users::getUserInfo($ci['uid'],'truename'),array('mobile/index','uid'=>$ci['uid']),array('target'=>'_blank'));?></li>
                        <li><?php echo CHtml::link(Users::getUserInfo($ci['uid'],'truename'),array('mobile/index','uid'=>$ci['uid']),array('target'=>'_blank'));?></li>
                        <li><?php echo CHtml::link(Users::getUserInfo($ci['uid'],'truename'),array('mobile/index','uid'=>$ci['uid']),array('target'=>'_blank'));?></li>
                        <?php }?>
                    </ul>
                </div>
            </div>
            <script>
            jQuery(".flash-ul").slide({mainCell:".bd ul",autoPlay:true,effect:"topMarquee",vis:10,interTime:50,trigger:"click"});
            </script>
        </div>
    </div>    
</div>









<?php
    echo '<script>jQuery(".logobanner").slide({mainCell:".bd ul",effect:"left",autoPlay:true});</script>';

?>
<?php }?>