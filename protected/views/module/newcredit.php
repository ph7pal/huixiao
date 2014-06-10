<?php 
$users = UserCredit::getNews(); 
?>

<style>
    .flash-ul{ overflow:hidden; position:relative;}    
    .flash-ul .infoList li{ height:25px; line-height:25px;   }
    .flash-ul .infoList li .date{ float:right; color:#999;  }
</style>

<div class="moduleBox margin-right_5px">    
    <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
        <div class="panel-heading">            
            <h3 class="panel-title">
                最新认证              
            </h3>
        </div>
        <div class="panel-body my-height">
            <?php if (!empty($users)) {?>
            <div class="flash-ul">
                <div class="bd">
                    <ul class="infoList">
                        <?php foreach ($users as $key=>$ci) { ?> 
                        <li><?php echo CHtml::link(Users::getUserInfo($ci['uid'],'truename'),array('mobile/index','uid'=>$ci['uid']),array('target'=>'_blank'));?></li>
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
            <?php echo '<script>jQuery(".logobanner").slide({mainCell:".bd ul",effect:"left",autoPlay:true});</script>';?>
<?php }?>
        </div>
    </div>    
</div>
<div class="clearfix"></div>