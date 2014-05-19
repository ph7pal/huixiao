<?php $this->renderPartial('//ads/ads',array('position'=>'topbar','type'=>'flash','uid'=>0));?>
<div style="margin-top: 20px;"></div>
<style>
    .no-padding{
        padding: 0;
    }
    .order-right{
        border-right: 1px solid #ddd;
    }
</style>
<div class="row">
<div class="col-xs-9 col-md-9 no-padding">
    <div class="col-xs-4 col-md-4">        
        <div class="panel panel-<?php echo $this->theme_panelStyle;?> ">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    图片新闻
                </h4>
            </div>
            <div class="panel-body">
              <?php $this->renderPartial('//module/flashnews');?>            
            </div>            
        </div>
    </div>
    <div class="col-xs-8 col-md-8">
        <ul id="myTab" class="nav nav-tabs">
            <li class="active"><a href="#news-credit" data-toggle="tab">信用资讯</a></li>
            <li class=""><a href="#news-news" data-toggle="tab">新闻资讯</a></li>    
            <li class=""><a href="#news-law" data-toggle="tab">政府法规</a></li>    
        </ul>
        <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade active in" id="news-credit">
          <?php 
          $colinfo=  Columns::getOne(69);
          $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>12));
          ?>
        </div>
        <div class="tab-pane fade" id="news-news">
          <?php 
          $colinfo=  Columns::getOne(76);
          $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>12));
          ?>
        </div>
        <div class="tab-pane fade" id="news-law">
          <?php 
          $colinfo=  Columns::getOne(93);
          $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>12));
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
    <div class="clearfix"></div>
    <div class="col-xs-12 col-md-12">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?> ">
            <div class="panel-heading">            
                <h4 class="panel-title">会销黑名单曝光</h4>
            </div>
            <div class="panel-body">
                <div class="col-xs-12 col-md-12">
                    <?php 
                    $colinfo=  Columns::getOne(97);
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>3,'nottable'=>true));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-xs-12 col-md-12">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?> ">
            <div class="panel-heading">            
                <h4 class="panel-title">会销骗局</h4>
            </div>
            <div class="panel-body">
                <div class="col-xs-12 col-md-12">
                    <?php 
                    $colinfo=  Columns::getOne(98);
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>3,'nottable'=>true));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
</div>
<div class="col-xs-3 col-md-3">
    <?php $this->renderPartial('//module/newcredit',array('colnum'=>$ic['colnum']));?>
    <div class="panel panel-<?php echo $this->theme_panelStyle;?> ">
        <div class="panel-heading">            
            <h4 class="panel-title">认证指南</h4>
        </div>
        <div class="panel-body">
            <div class="col-xs-12 col-md-12">
                <p><a href="#" class="btn btn-default center-block" role="button">认证细则</a></p>
                <p><a href="#" class="btn btn-default center-block" role="button">认证流程</a></p>
                <p><a href="#" class="btn btn-default center-block" role="button">认证文件</a></p>
                <p><a href="#" class="btn btn-default center-block" role="button">资料下载</a></p>  
            </div>           
        </div>            
    </div>
</div>       
</div>  
<div class="row">    
    <div class="col-xs-8 col-md-8">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    AAA级信用热度排行
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <div class="col-xs12 col-md-12">
                    <?php 
                    $colinfo=  Columns::getOne(84);
                    $this->renderPartial('/posts/flash',array('colinfo'=>$colinfo,'colnum'=>3,'facenum'=>8));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
    <div class="col-xs-4 col-md-4">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    AAA级信用厂家推荐
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <div class="col-xs-12 col-md-12">
                    <?php 
                    $colinfo=  Columns::getOne(84);
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>3,'facenum'=>8));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
</div>
<div class="clearfix"></div> 
<div class="panel panel-<?php echo $this->theme_panelStyle;?>">
    <div class="panel-heading">            
        <h3 class="panel-title">
            展会公司                
        </h3>
    </div>
    <div class="panel-body">      
        <div class="col-xs-6 col-md-6 order-right">            
            <?php 
            $colinfo=  Columns::getOne(94);
            $this->renderPartial('/posts/flash',array('colinfo'=>$colinfo,'colnum'=>4,'facenum'=>6));
            ?>
        </div>    
        <div class="col-xs-3 col-md-3 order-right">            
            <?php 
            $colinfo=  Columns::getOne(95);
            $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>8));
            ?>
        </div>
        <div class="col-xs-3 col-md-3">
            <?php 
            $colinfo=  Columns::getOne(96);
            $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>8));
            ?>
        </div>
    </div>            
</div>
<div class="clearfix"></div> 
<div class="row">    
    <div class="col-xs-8 col-md-8">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    代理商经销商排行
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <div class="col-xs12 col-md-12">
                    <?php 
                    $colinfo=  Columns::getOne(91);
                    $this->renderPartial('/posts/flash',array('colinfo'=>$colinfo,'colnum'=>3,'facenum'=>8));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
    <div class="col-xs-4 col-md-4">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    最新代理商经销商
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <div class="col-xs-12 col-md-12">
                    <?php 
                    $colinfo=  Columns::getOne(91);
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>3,'facenum'=>8));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
</div>
<div class="row">    
    <div class="col-xs-8 col-md-8">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    营销团队排行榜
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <div class="col-xs12 col-md-12">
                    <?php 
                    $colinfo=  Columns::getOne(91);
                    $this->renderPartial('/posts/flash',array('colinfo'=>$colinfo,'colnum'=>3,'facenum'=>8));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
    <div class="col-xs-4 col-md-4">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    最新营销团队
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <div class="col-xs-12 col-md-12">
                    <?php 
                    $colinfo=  Columns::getOne(91);
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>3,'facenum'=>8));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
</div>
<div class="row">    
    <div class="col-xs-12 col-md-12">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    其他专业新闻
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">                
                <?php 
                $colinfo=  Columns::getOne(91);
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>4,'nottable'=>true));
                ?>          
            </div>            
        </div>
    </div>    
</div>