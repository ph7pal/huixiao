<div class="w_960 content">
    <div class="position">
        <s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <?php echo CHtml::link('招聘信息',array('jobs/index'));?>&gt; 招聘信息</span>
    </div>
    <div class="main_960" style="position: relative;">

        <div class="recommendPosition" style="display: none">
            <h2>相似职位名称推荐</h2>
            <ul id="recomitem1">
            </ul>
            <div class="clearfix">
            </div>
        </div>
        <!--条件筛选 开始-->
        <div class="screening" id="screening">
            <div class="bd" id="bd">
                <ul>
                    <li class="item">
                        <dl class="clearfix">
                            <dt><s class="s"></s>职位类别：</dt>
                            <dd><?php echo CHtml::link('不限',array('jobs/index'),array('class'=>'fl'));?>
                                <div class="txt">
                                    <?php $zhiweis=  Jobs::zhiwei();foreach($zhiweis as $_zhiwei=>$zhiwei){?>
                                      <?php echo CHtml::link($zhiwei,array('jobs/index','type'=>$_zhiwei),array('class'=>($selectZhiwei==$_zhiwei) ? 'select' : ''));?>
                                    <?php }?>
                                </div>
                            </dd>
                        </dl>
                    </li>
                    <li class="item">
                        <dl class="clearfix">
                            <dt><s class="s"></s>工作地区：</dt>
                            <dd><?php echo CHtml::link('不限',array('jobs/index'),array('class'=>'fl'));?>
                                <div class="txt">
                                  <?php if(!empty($areas)){foreach($areas as $locid=>$localname){?>
                                      <?php echo CHtml::link($localname,array('jobs/index','localarea'=>$locid),array('class'=>($localarea==$locid) ? 'select' : ''));?>
                                    <?php }}?>
                                </div>
                                <div style="display: block;" onclick="moreExpandValue(this)" class="s-option">
                                    <img src="<?php echo Yii::app()->theme->baseUrl;?>/images/search_more.jpg" />
                                </div>
                                <div style="display: none;" onclick="lessExpandValue(this)" class="s-option">
                                    <img src="<?php echo Yii::app()->theme->baseUrl;?>/images/search_less.jpg" />
                                </div>
                            </dd>
                        </dl>
                    </li>
                    <li class="item">
                        <dl class="clearfix">
                            <dt><s class="s"></s>工作福利：</dt>
                            <dd><?php echo CHtml::link('不限',array('jobs/index'),array('class'=>'fl'));?>
                                <div class="txt">
                                    <?php if(!empty($fulis)){foreach($fulis as $fid=>$fuli){?>
                                      <?php echo CHtml::link($fuli,array('jobs/index','fuli'=>$fid),array('class'=>($fuliid==$fid) ? 'select' : ''));?>
                                    <?php }}?>                                         
                                </div>
                                <div style="display: block;" onclick="moreExpandValue(this)" class="s-option">
                                    <img src="<?php echo Yii::app()->theme->baseUrl;?>/images/search_more.jpg" />
                                </div>
                                <div style="display: none;" onclick="lessExpandValue(this)" class="s-option">
                                    <img src="<?php echo Yii::app()->theme->baseUrl;?>/images/search_less.jpg" />
                                </div>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
      <!--条件筛选 结束-->
        <div class="currentsearch_new  clr">
            <span class="m_right20 f_left"></span><span class="f_left"></span>
        </div>
        <!--主要内容部分开始-->
        <div class="main2">
            <form name="frmMain" style="margin: 0px;">
                <div class="search-mapcont-list">
                    <div class="search-result-cont" style="padding: 20px 0 0 10px;">
                        <table width="692" class="search-result-tabth">
                            <tr class="tabhead">
                                <th class="tabCol1">职位名称</th>
                                <th class="tabCol2">公司名称</th>
                                <th class="tabCol3">工作地点</th>
                                <th class="tabCol4">发布日期</th>
                                <th class="tabCol5">&nbsp;</th>
                            </tr>
                        </table>
                        <!--数据循环开始 一共40条数据-->
                        <?php if(!empty($posts)){foreach($posts as $post){$this->renderPartial('_view',array('data'=>$post));}}?>
                        <!--数据循环结束 一个40条数据-->
                    </div>
                    <div class="applay-select">
                        <?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </form>
            <div class="clearfix">
            </div>
        </div>
        <!--主要内容部分结束-->


    </div>


    <div class="searchcontent" id="content">
        <div class="title">
            <span class="titleclose close"></span>您对搜索有什么意见或者建议?(选填)
        </div>
        <textarea name="content" id="advise" maxlength="500"></textarea>
        <input type="button" value="确定" id="sugesstion" class="close confirm" />
    </div>

</div>
<script type="text/javascript">

    $(function () {
        //点击列表按钮 打开公司详情
        $('.showTR-btn a').click(function () {
            $(this).closest('tr').next().toggle();
            $(this).toggleClass('showTR-up-btn');
            return false;
        });



    })
    var checkAll = function (trigger, itemname) {
        var allArr = document.getElementsByName(trigger.name);
        var itemArr = document.getElementsByName(itemname);
        for (var i = 0; i < allArr.length; i++) allArr[i].checked = trigger.checked;
        for (i = 0; i < itemArr.length; i++) itemArr[i].checked = trigger.checked
    };
    var uncheckAll = function (allname) {
        var allArr = document.getElementsByName(allname);
        for (var i = 0; i < allArr.length; i++) allArr[i].checked = allArr[i].checked & 0
    };
    //标签筛选
    function moreExpandValue(t) {
        $(t).hide().next().show();
        $(t).parent().find('.txt').css("height", "auto");

    }
    function lessExpandValue(t) {
        $(t).parent().find('.txt').css("height", "25px");
        $(t).hide().prev().show();

    }
</script>