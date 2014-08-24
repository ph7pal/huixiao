<?php $this->renderPartial('//ads/ads',array('position'=>'topbar','type'=>'flash','uid'=>0));?>
<div style="margin-top: 20px;"></div>
<?php if(!$this->inMobile){?>
<style>
    
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
        font-weight:bold;
    }
    .margin-left-15{
                padding-left: 15px !important;
            }
            .my-height{
                height:280px;
            }
            .my-height-2x{
                height:602px;
            }
            .margin-right_5px{
                margin-right: -5px;
            }
            .padding-right-10px{
                padding-right: 10px !important;
            }
    .no-padding{
        padding: 0 !important;
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
<style>
/* 本例子css */
.logobanner{ width:100%; height:280px; overflow:hidden; position:relative;}
.logobanner .hd{ height:15px; overflow:hidden; position:absolute; right:5px; bottom:5px; z-index:1; }
.logobanner .hd ul{ overflow:hidden; zoom:1; float:left;  }
.logobanner .hd ul li{ float:left; margin-right:2px;  width:15px; height:15px; line-height:14px; text-align:center; background:#fff; cursor:pointer; }
.logobanner .hd ul li.on{ background:#f00; color:#fff; }
.logobanner .bd{ position:relative; height:100%; z-index:0;   }
.logobanner .bd li{ zoom:1; vertical-align:middle; }
.logobanner .bd img{ display:block;  }

/* 下面是前/后按钮代码，如果不需要删除即可 */
.logobanner .prev,
.logobanner .next{ position:absolute; left:3%; top:50%; margin-top:-25px; display:block; width:32px; height:40px; background:url(../images/slider-arrow.png) -110px 5px no-repeat; filter:alpha(opacity=50);opacity:0.5;   }
.logobanner .next{ left:auto; right:3%; background-position:8px 5px; }
.logobanner .prev:hover,
.logobanner .next:hover{ filter:alpha(opacity=100);opacity:1;  }
.logobanner .prevStop{ display:none;  }
.logobanner .nextStop{ display:none;  }
</style>
<style>
    .no-nav-border .nav-tabs{
        border-bottom: none;
    }
    #tab-for-lecturer{
        margin-top: 1px;
    }
    #tab-for-lecturer li a{
        color:#FFF;
        border:none;
    }
    #tab-for-lecturer .active a{
        color:#333;
    }
    #tab-for-lecturer>li>a:hover{    
        background-color: #FFF;
        color:#333;
    }
    .panel-primary .panel-title a,.panel-primary .panel-title a:hover{
      color:#FFF;
    }
    .panel-default .panel-title a,.panel-default .panel-title a:hover{
      color: #3184db;
    }
</style>
<?php }?>

<?php
$colinfo1=  Columns::getOne(1);
$arr=array(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23);
$idstr=join(',',$arr);
$colinfos=Columns::indexColumns($idstr);
$areas= Area::listArea(NUll,false,10);
?>
<div class="well-sm well">
   <h1><?php echo $colinfos[21]['title'];?></h1>
   <hr/>
   <?php $this->renderPartial('/posts/marqueeleft',array('colinfo'=>$colinfos[21]));?>
</div>
<div class="clearfix">
<div class="col-xs-9 col-md-9 no-padding">
    <div class="col-xs-4 col-md-4">        
        <div class="panel panel-<?php echo $this->theme_panelStyle;?> ">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    <?php echo $colinfos[0]['title'];?>
                </h4>
            </div>
            <?php $this->renderPartial('//module/flashnews',array('colinfo'=>$colinfos[0]));?>
        </div>
    </div>
    <div class="col-xs-8 col-md-8 my-height">
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
    <div class="clearfix"></div>
    <div class="col-xs-12 col-md-12">
        <div class="panel panel-danger">
            <div class="panel-heading">            
                <h4 class="panel-title">
                  <b><?php echo $colinfos[4]['title'];?></b>
                  <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[4]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <div class="col-xs-12 col-md-12 my-height">
                    <?php                     
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[4],'colnum'=>3,'nottable'=>true,'nodate'=>true,'topHotNum'=>3));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-xs-12 col-md-12">
        <div class="panel panel-danger">
            <div class="panel-heading">            
                <h4 class="panel-title">
                  <b><?php echo $colinfos[5]['title'];?></b>
                  <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[5]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body">
                <div class="col-xs-12 col-md-12 my-height">
                    <?php 
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[5],'colnum'=>3,'nottable'=>true,'nodate'=>true,'topHotNum'=>3));
                    ?>
                </div>           
            </div>            
        </div>
    </div>
</div>
<div class="col-xs-3 col-md-3">
    <?php $this->renderPartial('//module/newcredit');?>
    <div class="panel panel-danger margin-right_5px">
        <div class="panel-heading">            
            <h4 class="panel-title"><b>认证指南</b></h4>
        </div>
        <div class="panel-body">
            <div class="col-xs-12 col-md-12">
                <p><a href="#" class="btn btn-danger center-block" role="button">认证细则</a></p>
                <p><a href="#" class="btn btn-primary center-block" role="button">认证流程</a></p>
                <p><a href="#" class="btn btn-info center-block" role="button">认证文件</a></p>
                <p><a href="#" class="btn btn-success center-block" role="button">资料下载</a></p>  
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
        <div class="col-xs-9 col-md-9">
        <div class="panel panel-default">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    <b><?php echo $colinfos[6]['title'];?></b>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/qiye'));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">
                <?php $this->renderPartial('//module/qiye',array('colinfo'=>$colinfos[6],'colnum'=>6));?>     
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
    </div>
    <div class="col-xs-3 col-md-3">
        <div class="panel panel-default margin-right_5px">
            <div class="panel-heading second-panel">            
                <h4 class="panel-title">
                    <?php echo $colinfos[7]['title'];?>                    
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/qiye'));?></span>
                </h4>
            </div>
            <div class="panel-body my-height-2x">
                <?php $this->renderPartial('//module/qiye',array('colinfo'=>$colinfos[7],'colnum'=>1));?>
            </div>            
        </div>
    </div>
    </div>            
</div>
<div class="clearfix"></div> 
<div class="panel panel-<?php echo $this->theme_panelStyle;?>">
    <div class="panel-heading">            
        <h3 class="panel-title">
          <?php echo $colinfos[9]['title'];?>
          <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[9]['id']));?></span>
        </h3>     
    </div>
    <div class="panel-body my-height">                 
        <?php         
        $this->renderPartial('/posts/flash',array('colinfo'=>$colinfos[9],'colnum'=>2,'facenum'=>12));
        ?>
    </div>            
</div>
<div class="clearfix"></div> 
<div class="panel panel-<?php echo $this->theme_panelStyle;?>">
    <div class="panel-heading" style="height: 38px;padding:0 15px;">  
      <div class="pull-left no-nav-border">
          <ul id="tab-for-lecturer" class="nav nav-tabs">
            <li class="active"><a href="#lecturer-tab-0" data-toggle="tab">信用优秀讲师推荐</a></li>
              <?php  foreach($areas as $ak=>$aval){?>         
              <li>
                  <a href="#lecturer-tab-<?php echo $aval['id'];?>" data-toggle="tab"><?php echo $aval['name'];?></a>
              </li>
              <?php }?>
            <li><?php echo CHtml::link('更多','javscript:;',array('onclick'=>'window.location="'.Yii::app()->createUrl('posts/jiangshi').'";'));?></li>  
          </ul>
      </div>
    </div>
    <div class="panel-body my-height"> 
        <div id="myTabContent" class="tab-content">
          <div class="tab-pane fade active in" id="lecturer-tab-0">
            <?php $this->renderPartial('//module/listLecturer',array('areaid'=>0));?>
          </div>
            <?php  foreach($areas as $ak=>$aval){?>
                <div class="tab-pane fade" id="lecturer-tab-<?php echo $aval['id'];?>">
                    <?php $this->renderPartial('//module/listLecturer',array('areaid'=>$aval['id']));?>
                </div>
            <?php }?>    
        </div>
        <script>
          $(document).ready(function(){
            $('#tab-for-lecturer a').click(function (e) {
              e.preventDefault()
              $(this).tab('show')
            });
            $('#tab-for-lecturer li:eq(0) a').tab('show');
            });
        </script>
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
        <div class="col-xs-6 col-md-6"> 
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
        </div>    
        <div class="col-xs-3 col-md-3"> 
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                      <?php echo $colinfos[10]['title'];?>
                      <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[10]['id']));?></span>
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php                     
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[10],'colnum'=>8));
                    ?>
                </div>            
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <div class="panel panel-default margin-right_5px">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                      <?php echo $colinfos[11]['title'];?>
                      <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[11]['id']));?></span>
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
</div>
<div class="clearfix"></div> 

<div class="panel panel-<?php echo $this->theme_panelStyle;?> no-border">
    <div class="panel-heading my-heading-border">            
        <h3 class="panel-title">
            会销营销团队                
        </h3>
    </div>
    <div class="" style="margin-top: 5px;">      
        <div class="col-xs-9 col-md-9">
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
    </div>
    <div class="col-xs-3 col-md-3">
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
</div>
<div class="clearfix"></div>
<div class="panel panel-<?php echo $this->theme_panelStyle;?> no-border">
    <div class="panel-heading my-heading-border">            
        <h3 class="panel-title">
            会销行业必看知识推荐
        </h3>
    </div>
    <div class="" style="margin-top: 5px;">      
        <div class="col-xs-3 col-md-3"> 
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                      <?php echo $colinfos[13]['title'];?>
                      <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[13]['id']));?></span>
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php                     
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[13],'colnum'=>8,'nodate'=>true));
                    ?>
                </div>            
            </div>
        </div>    
        <div class="col-xs-3 col-md-3"> 
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                      <?php echo $colinfos[14]['title'];?>
                      <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[14]['id']));?></span>
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php 
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[14],'colnum'=>8,'nodate'=>true));
                    ?>
                </div>            
            </div>
        </div>
        <div class="col-xs-3 col-md-3">
            <div class="panel panel-default">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                      <?php echo $colinfos[15]['title'];?>
                      <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[15]['id']));?></span>
                    </h3>
                </div>
                <div class="panel-body my-height">                 
                    <?php 
                    $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[15],'colnum'=>8,'nodate'=>true));
                    ?>
                </div>            
            </div>            
        </div>
        <div class="col-xs-3 col-md-3"> 
            <div class="panel panel-default margin-right_5px">
                <div class="panel-heading second-panel">            
                    <h3 class="panel-title">
                      <?php echo $colinfos[16]['title'];?>
                      <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[16]['id']));?></span>
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
</div>
<div class="clearfix"></div>
<div class="col-xs-9 col-sm-9">
  <div class="col-xs-6 col-md-6">
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
    </div>
    <div class="col-xs-6 col-md-6">
      <div class="panel panel-<?php echo $this->theme_panelStyle;?> margin-right_5px">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    <?php echo $colinfos[18]['title'];?>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[18]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">                
                <?php 
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[18],'colnum'=>1,'nottable'=>true,'nodate'=>true));
                ?>          
            </div>            
        </div>
    </div>
</div>
<div class="col-xs-3 col-sm-3 no-padding">
  <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
      <div class="panel-heading">            
          <h4 class="panel-title">
              <?php echo $colinfos[21]['title'];?>
              <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[21]['id']));?></span>
          </h4>
      </div>
      <div class="panel-body my-height">
          <?php 
          $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[21],'colnum'=>1,'nottable'=>true,'nodate'=>true));
          ?>          
      </div>            
  </div>            
</div>
<div class="clearfix"></div>
    
    
<div class="col-xs-9 col-sm-9"> 
    <div class="col-xs-6 col-md-6">
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
    </div>
    <div class="col-xs-6 col-md-6">
        <div class="panel panel-<?php echo $this->theme_panelStyle;?> margin-right_5px">
            <div class="panel-heading">            
                <h4 class="panel-title">
                    <?php echo $colinfos[20]['title'];?>
                    <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[20]['id']));?></span>
                </h4>
            </div>
            <div class="panel-body my-height">                
                <?php 
                $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[20],'colnum'=>1,'nottable'=>true,'nodate'=>true));
                ?>          
            </div>            
        </div>
    </div>
</div>
<div class="col-xs-3 col-md-3 no-padding">
  <div class="panel panel-<?php echo $this->theme_panelStyle;?>">
      <div class="panel-heading">            
          <h4 class="panel-title">
              <?php echo $colinfos[22]['title'];?>
              <span class="pull-right more"><?php echo CHtml::link('更多',array('posts/index','colid'=>$colinfos[22]['id']));?></span>
          </h4>
      </div>
      <div class="panel-body my-height">
          <?php 
          $this->renderPartial('/posts/miniLists',array('colinfo'=>$colinfos[22],'colnum'=>1,'nottable'=>true,'nodate'=>true));
          ?>          
      </div>            
  </div>
</div>    