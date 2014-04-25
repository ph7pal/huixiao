<?php if(!empty($indexCols)){?>
<?php foreach($indexCols as $key=>$ic){?>
<div class="col-xs-<?php echo $ic['colnum'];?> col-md-<?php echo $ic['colnum'];?> moduleBox">
    <?php if(is_numeric($ic['colinfo']['id'])){?>
    <h4><?php echo $ic['colinfo']['title'];?><small><?php echo strtoupper($ic['colinfo']['name']);?></small></h4>
    <div class="con">
        <?php if($ic['colinfo']['classify']!='thumb'){?>
        <?php 
        if($ic['colinfo']['classify']=='page'){
            $this->renderPartial('/posts/miniPage',array('colid'=>$ic['colinfo']['id']));
        }else{
            $this->renderPartial('/posts/miniLists',array('colid'=>$ic['colinfo']['id']));            
        }
        ?>        
        <?php }else{?>
            <?php $this->renderPartial('/posts/flash',array('info'=>$ic)); ?>
        <?php }?>
    </div>
    <?php }else{?>
    <?php $this->renderPartial('/posts/ads');?>
    <?php }?>
</div>
<?php }?>
<?php }?>