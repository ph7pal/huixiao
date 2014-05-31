<?php $this->renderPartial('//ads/ads',array('position'=>'topbar','type'=>'flash','uid'=>0));?>
<div style="margin-top: 20px;"></div>
<?php if(!$this->inMobile){?>
<style>
    .no-padding{
        padding: 0 !important;
    }
    .order-right{
        border-right: 1px solid #ddd;
    }
    .no-border{
        border:none;
        -webkit-box-shadow: none;
        box-shadow: none; 
    }
    .my-heading-border{
        border:1px solid #DDD
    }
    .myborder td{
        border-top:none !important;
        border-bottom: 1px solid #dddddd;
    }
    a.toplink{
        color:red;
    }
    .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
    padding-right: 5px !important;
    padding-left: 0 !important;
    }
    .panel{
        margin-bottom: 8px !important;
    }
    .second-panel{
        padding:8px 15px !important;
    }
    .second-panel .panel-title{
        font-size: 14px !important;
    }
    
</style>
<style type="text/css">
		/* 本例子css */
		.txtMarquee-left{ position:relative;}
		.txtMarquee-left .hd{ overflow:hidden;  height:30px;padding:0 10px;  }
		.txtMarquee-left .bd .tempWrap{ width:900px !important; }
		.txtMarquee-left .bd ul{ overflow:hidden; zoom:1; }
		.txtMarquee-left .bd ul li{ margin-right:20px;  float:left; height:24px; line-height:24px;  text-align:left; _display:inline; width:auto !important;  }/* 用 width:auto !important 覆盖SuperSlide自动生成的宽度，解决文字不衔接问题 */


		.txtMarquee-left .bd ul li span{ color:#999;  }
</style>
<?php }?>
<div class="well-sm well visible-md visible-lg">
   <h1>关于开展“AAA级信用企业”信用评级的通知</h1>
   <hr/>
<div class="txtMarquee-left">
			<div class="bd">
				<ul class="infoList">
                    <li><a href="#" class="alert-link">女友坚持警局完婚不抛弃</a><span>[11-11]</span></li>
                        <li><a href="#" class="alert-link">中国打破了世界软件巨头规则</a><span>[11-11]</span></li>
                        <li><a href="#" class="alert-link">施强：高端专业语言教学</a><span>[11-11]</span></li>
                        <li><a href="#" class="alert-link">新加坡留学，国际双语课程</a><span>[11-11]</span></li>
                        <li><a href="#" class="alert-link">高考后留学日本名校随你选</a><span>[11-11]</span></li>
                        <li><a href="#" class="alert-link">教育培训行业优势资源推介</a><span>[11-11]</span></li>
                        <li><a href="#" class="alert-link">女友坚持警局完婚不抛弃</a><span>[11-11]</span></li>
			</ul>
			</div>
    <script id="jsID" type="text/javascript">
		jQuery(".txtMarquee-left").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:4,interTime:50,trigger:"click"});
		</script>
		</div>
   
</div>

<div class="">
<div class="col-xs-12 col-md-9 no-padding">
    <div class="col-xs-12 col-md-4">        
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
    <div class="col-xs-12 col-md-8">
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
<div class="col-xs-12 col-md-3">
    <?php $this->renderPartial('//module/newcredit',array('colnum'=>$ic['colnum']));?>
    <div class="panel panel-danger ">
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
<div class="clearfix"></div>

<div class="panel panel-<?php echo $this->theme_panelStyle;?> no-border">
    <div class="panel-heading my-heading-border">            
        <h3 class="panel-title">
            信用厂家、产品推荐                
        </h3>
    </div>
    <div class="" style="margin-top: 5px;">      
        <div class="col-xs-12 col-md-9">
        <div class="panel panel-default">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    <b>AAA级信用热度排行</b>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <?php 
                $colinfo=  Columns::getOne(84);
                $this->renderPartial('/posts/flash',array('colinfo'=>$colinfo,'colnum'=>3,'facenum'=>8));
                ?>        
            </div>            
        </div>
        <div class="panel panel-default">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    厂家招商资讯
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">                
                <?php 
                $colinfo=  Columns::getOne(88);
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>3,'nottable'=>true));
                ?>        
            </div>            
        </div>
    </div>
    <div class="col-xs-12 col-md-3">
        <div class="panel panel-default">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    AAA级信用厂家推荐
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">                
                <?php 
                $colinfo=  Columns::getOne(84);
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'topFaceNum'=>3,'nodate'=>true));
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
            热销信用产品推荐                
        </h3>
    </div>
    <div class="panel-body">                 
        <?php 
        $colinfo=  Columns::getOne(89);
        $this->renderPartial('/posts/flash',array('colinfo'=>$colinfo,'colnum'=>2,'facenum'=>12));
        ?>
    </div>            
</div>
<div class="clearfix"></div> 
<div class="panel panel-<?php echo $this->theme_panelStyle;?>">
    <div class="panel-heading">            
        <h3 class="panel-title">
            信用优秀讲师推荐                
        </h3>
    </div>
    <div class="panel-body">                 
        <?php 
        $colinfo=  Columns::getOne(90);
        $this->renderPartial('/posts/flash',array('colinfo'=>$colinfo,'colnum'=>2,'facenum'=>12));
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
    <div class="" style="margin-top: 5px;">      
        <div class="col-xs-12 col-md-6"> 
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        热门展会公司               
                    </h3>
                </div>
                <div class="panel-body">                 
                    <?php 
                    $colinfo=  Columns::getOne(94);
                    $this->renderPartial('/posts/flash',array('colinfo'=>$colinfo,'colnum'=>4,'facenum'=>6));
                    ?>
                </div>            
            </div>
        </div>    
        <div class="col-xs-12 col-md-3"> 
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        展会资讯               
                    </h3>
                </div>
                <div class="panel-body">                 
                    <?php 
                    $colinfo=  Columns::getOne(95);
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>8));
                    ?>
                </div>            
            </div>
        </div>
        <div class="col-xs-12 col-md-3">
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                        展会档期          
                    </h3>
                </div>
                <div class="panel-body">                 
                    <?php 
                    $colinfo=  Columns::getOne(96);
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'colnum'=>8));
                    ?>
                </div>            
            </div>            
        </div>
    </div>            
</div>
<div class="clearfix"></div> 
<div class="">    
    <div class="col-xs-12 col-md-9">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    营销团队排行榜
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">                
                <?php 
                $colinfo=  Columns::getOne(91);
                $this->renderPartial('/posts/flash',array('colinfo'=>$colinfo,'colnum'=>2,'facenum'=>12));
                ?>          
            </div>            
        </div>
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    营销模式
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">                
                <?php 
                $colinfo=  Columns::getOne(75);
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'nottable'=>true,'colnum'=>4));
                ?>          
            </div>            
        </div>
    </div>
    <div class="col-xs-12 col-md-3">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    最新营销团队
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>''));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <?php 
                $colinfo=  Columns::getOne(91);
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfo,'topFaceNum'=>3));
                ?>
            </div>            
        </div>
    </div>
</div>
<div class="">    
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