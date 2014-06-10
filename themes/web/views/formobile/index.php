<?php $this->renderPartial('//ads/ads',array('position'=>'topbar','type'=>'flash','uid'=>0));?>
<?php
$colinfo1=  Columns::getOne(1);
$arr=array(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22);
$idstr=join(',',$arr);
$colinfos=Columns::indexColumns($idstr);
$areas= Area::listArea(NUll,false,10);
?>
<div class="col-xs-12 col-md-8 my-height">
    <ul id="myTab" class="nav nav-tabs">
        <li class="active"><a href="#news-credit" data-toggle="tab"><?php echo $colinfos[1]['title'];?></a></li>
        <li class=""><a href="#news-news" data-toggle="tab"><?php echo $colinfos[2]['title'];?></a></li>    
        <li class=""><a href="#news-law" data-toggle="tab"><?php echo $colinfos[3]['title'];?></a></li>    
    </ul>
    <div id="myTabContent" class="tab-content">
    <div class="tab-pane fade active in" id="news-credit">
      <?php 
      $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[1],'colnum'=>12));
      ?>
    </div>
    <div class="tab-pane fade" id="news-news">
      <?php 
      $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[2],'colnum'=>12));
      ?>
    </div>
    <div class="tab-pane fade" id="news-law">
      <?php 
      $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[3],'colnum'=>12));
      ?>
    </div>        
  </div>
    <script>
    $('#myTab a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
      })
    </script>
</div>
<div class="panel panel-<?php echo $this->theme_panelStyle;?> ">
    <div class="panel-heading">            
        <h4 class="panel-title">
            <?php echo $colinfos[0]['title'];?>
        </h4>
    </div>
    <?php $this->renderPartial('//module/flashnews',array('colinfo'=>$colinfos[0]));?>
</div>
<div class="panel panel-danger">
    <div class="panel-heading">            
        <h4 class="panel-title"><b><?php echo $colinfos[4]['title'];?></b></h4>
    </div>
    <div class="panel-body">
        <div class="col-xs-12 col-md-12 my-height">
            <?php                     
            $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[4],'colnum'=>3,'nottable'=>true,'nodate'=>true,'topHotNum'=>3));
            ?>
        </div>           
    </div>            
</div>
<div class="panel panel-danger">
    <div class="panel-heading">            
        <h4 class="panel-title"><b><?php echo $colinfos[5]['title'];?></b></h4>
    </div>
    <div class="panel-body">
        <div class="col-xs-12 col-md-12 my-height">
            <?php 
            $colinfo=  Columns::getOne(98);
            $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[5],'colnum'=>3,'nottable'=>true,'nodate'=>true,'topHotNum'=>3));
            ?>
        </div>           
    </div>            
</div>
<?php $this->renderPartial('//module/newcredit');?>

<div class="panel panel-<?php echo $this->theme_panelStyle;?> no-border">
    <div class="panel-heading my-heading-border">            
        <h3 class="panel-title">
            信用厂家、产品推荐                
        </h3>
    </div>
    <div class="panel-body" style="margin-top: 5px;"> 
        <div class="panel panel-default">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    <b><?php echo $colinfos[6]['title'];?></b>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[6]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">
                <?php                 
                $this->renderPartial('/posts/flash',array('colinfo'=>$colinfos[6],'colnum'=>3,'facenum'=>8));
                ?>        
            </div>            
        </div>
        <div class="panel panel-default">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    <?php echo $colinfos[8]['title'];?>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[8]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">                
                <?php                 
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[8],'colnum'=>3,'nottable'=>true));
                ?>        
            </div>            
        </div>
        <div class="panel panel-default margin-right_5px">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    <?php echo $colinfos[7]['title'];?>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[7]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height-2x">
                <?php                 
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[7],'topFaceNum'=>3,'nodate'=>true));
                ?>
            </div>            
        </div>
    </div>            
</div>
<div class="clearfix"></div> 
<div class="panel panel-<?php echo $this->theme_panelStyle;?>">
    <div class="panel-heading">            
        <h3 class="panel-title">
            <?php echo $colinfos[9]['title'];?>                
        </h3>
    </div>
    <div class="panel-body my-height">                 
        <?php         
        $this->renderPartial('/posts/flash',array('colinfo'=>$colinfos[9],'colnum'=>2,'facenum'=>12));
        ?>
    </div>            
</div>

<div class="clearfix"></div>
<div class="panel panel-<?php echo $this->theme_panelStyle;?> no-border">
    <div class="panel-heading my-heading-border">            
        <h3 class="panel-title">
            展会公司                
        </h3>
    </div>
    <div class="panel-body" style="margin-top: 5px;">      
        
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        热门展会公司               
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                   <?php                     
                    $this->renderPartial('//module/exhibition');
                    ?>
                </div>            
            </div> 
        
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        <?php echo $colinfos[10]['title'];?>      
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php                     
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[10],'colnum'=>8));
                    ?>
                </div>            
            </div>
            <div class="panel panel-default margin-right_5px">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        <?php echo $colinfos[11]['title'];?>          
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php                     
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[11],'colnum'=>8));
                    ?>
                </div>            
            </div> 
    </div>            
</div>
<div class="clearfix"></div> 

<div class="panel panel-<?php echo $this->theme_panelStyle;?> no-border">
    <div class="panel-heading my-heading-border">            
        <h3 class="panel-title">
            会销营销团队                
        </h3>
    </div>
    <div class="panel-body" style="margin-top: 5px;"> 
        <div class="panel panel-default">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    营销团队排行榜
                </h4>
            </div>
            <div class="panel-body my-height">                
                <?php 
                $this->renderPartial('/module/team');
                ?>          
            </div>            
        </div>
        <div class="panel panel-default">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    <?php echo $colinfos[12]['title'];?>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[12]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">                
                <?php 
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[12],'nottable'=>true,'colnum'=>4,'nodate'=>true));
                ?>          
            </div>            
        </div>
        <div class="panel panel-default margin-right_5px">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    最新营销团队                    
                </h4>
            </div>
            <div class="panel-body my-height-2x">
                <?php 
                $this->renderPartial('/module/team');
                ?>
            </div>            
        </div>
    </div>            
</div>
<div class="clearfix"></div>
<div class="panel panel-<?php echo $this->theme_panelStyle;?> no-border">
    <div class="panel-heading my-heading-border">            
        <h3 class="panel-title">
            会销行业必看知识推荐
        </h3>
    </div>
    <div class="" style="margin-top: 5px;">   
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        <?php echo $colinfos[13]['title'];?>
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php                     
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[13],'colnum'=>8,'nodate'=>true));
                    ?>
                </div>            
            </div>    
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        <?php echo $colinfos[14]['title'];?>           
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php 
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[14],'colnum'=>8,'nodate'=>true));
                    ?>
                </div>            
            </div>
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        <?php echo $colinfos[15]['title'];?>
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php 
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[15],'colnum'=>8,'nodate'=>true));
                    ?>
                </div>            
            </div>  
            <div class="panel panel-default margin-right_5px">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        <?php echo $colinfos[16]['title'];?>              
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php 
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[16],'colnum'=>8,'nodate'=>true));
                    ?>
                </div>            
            </div>
    </div>            
</div>
<div class="clearfix"></div>   
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    <?php echo $colinfos[17]['title'];?>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[17]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">                
                <?php 
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[17],'colnum'=>1,'nottable'=>true,'nodate'=>true));
                ?>          
            </div>            
        </div>
        <div class="panel panel-<?php echo $this->theme_panelStyle;?> margin-right_5px">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    <?php echo $colinfos[18]['title'];?>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[18]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">                
                <?php 
                $colinfo=  Columns::getOne(91);
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[18],'colnum'=>1,'nottable'=>true,'nodate'=>true));
                ?>          
            </div>            
        </div>
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    <?php echo $colinfos[19]['title'];?>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[19]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">                
                <?php 
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[19],'colnum'=>1,'nottable'=>true,'nodate'=>true));
                ?>          
            </div>            
        </div>
        <div class="panel panel-<?php echo $this->theme_panelStyle;?> margin-right_5px">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    <?php echo $colinfos[20]['title'];?>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[20]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">                
                <?php 
                $colinfo=  Columns::getOne(91);
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[20],'colnum'=>1,'nottable'=>true,'nodate'=>true));
                ?>          
            </div>            
        </div> 