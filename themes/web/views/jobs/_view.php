<!--数据 开始-->
<table class="search-result-tab">
    <tr class="showTR">
        <td class="Jobname">
            <span class="add-span"><?php echo CHtml::link($data['title'],array('jobs/view','id'=>$data['id']),array('target'=>'_blank'));?></span>
        </td>
        <td class="Companyname">
            <?php echo $data['gs_title'];?>
        </td>
        <td class="Companyaddress"><?php echo $data['gz_didian'];?></td>
        <td class="releasetime"><?php echo date('y-m-d',$data['cTime']);?></td>
        <td class="showTR-btn">
            <a href="#">&nbsp;</a>
        </td>
    </tr>
    <!--列表显示隐藏部分 开始-->
    <tr class="hideTr">
        <td colspan="5">
            <table class="search-result-infotab">
                <tr>
                    <td class="tabCol1">
                      <span>地点：<?php echo $data['gz_didian'];?></span><span>公司性质：<?php echo $data['gs_xingzhi'];?></span><span>公司规模：<?php echo $data['gs_guimo'];?></span><span>学历：<?php echo Jobs::xueli($data['gz_zdxueli']);?></span><span>职位月薪：<?php echo Jobs::money($data['gz_xinzi']);?></span><p>岗位职责：<?php echo zmf::subStr($data['gz_miaoshu'],150);?></p>
                    </td>
                    <td class="tabCol2">
                      <?php echo CHtml::link('查看详情',array('jobs/view','id'=>$data['id']),array('target'=>'_blank'));?>                      
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <!--列表显示隐藏部分 结束-->
</table>
<!--数据 结束-->