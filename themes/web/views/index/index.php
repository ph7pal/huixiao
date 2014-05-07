<?php if(!empty($indexCols)){?>
<?php $colsNum=0;$echoDiv=false;foreach($indexCols as $key=>$ic){?>
<?php if(!empty($ic['colinfo'])){?>
<?php if($ic['coltype']!='ads'){?>
<?php if($colsNum!=12 && !$echoDiv){$echoDiv=true;?>
<div class="row">
<?php }?>
<?php $colsNum+=$ic['colnum'];?>
<div class="col-xs-<?php echo $ic['colnum'];?> col-md-<?php echo $ic['colnum'];?> moduleBox">    
    <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
        <div class="panel-heading">            
            <h3 class="panel-title">
                <?php echo $ic['colinfo']['title'];?>
                <small><?php echo strtoupper($ic['colinfo']['name']);?></small>
                <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$ic['colinfo']['id']));?></span>
            </h3>
        </div>
        <div class="panel-body">
          <div class="con">
                <?php if($ic['colinfo']['classify']!='thumb'){?>
                <?php 
                    if($ic['colinfo']['classify']=='page'){
                        $this->renderPartial('/posts/miniPage',array('colinfo'=>$ic['colinfo']));
                    }elseif($ic['colinfo']['classify']=='logo'){
                        $this->renderPartial('/posts/logo',array('colinfo'=>$ic['colinfo'],'colnum'=>$ic['colnum']));
                    }else{
                        $this->renderPartial('/posts/miniLists',array('colinfo'=>$ic['colinfo']));            
                    }
                ?>
                <?php }else{?>
                    <?php $this->renderPartial('/posts/flash',array('colinfo'=>$ic['colinfo'])); ?>
                <?php }?>
           </div>
        </div>
    </div>    
</div>
<?php if($colsNum==12){$colsNum=0;$echoDiv=false;?>
</div>
<?php }?>
<?php }else{?>
<div class="col-xs-<?php echo $ic['colnum'];?> col-md-<?php echo $ic['colnum'];?> moduleBox">
<?php $this->renderPartial('/posts/ads',array('data'=>$ic['colinfo']));?>
</div>
<?php }?>
<?php }?>
<?php }?>
<?php }?>