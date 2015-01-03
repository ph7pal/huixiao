<h3>自定义栏目</h3>
<?php echo CHtml::hiddenField('type',$type);?>
<p>
<?php 
$arr=explode(',',$c['column']);
if(!empty($arr)){
    foreach($items as $k=>$v){
        if(in_array($k,$arr)){
            $css='checked="checked"';
        }else{
            $css='';
        }            
        $tm='<label class="checkbox-inline"><input type="checkbox" id="column_'.$k.'" value="'.$k.'" name="columns[]" '.$css.'>'.$v.'</label>';
        $items[$k]=$tm;
    }
}
$this->widget('zii.widgets.jui.CJuiSortable', array(
    'items'=>$items,
    'itemTemplate'=>'{content}',
    // additional javascript options for the accordion plugin
    'options'=>array(
        'delay'=>'300',
    ),
));
?>    
</p>
<p class="help-block">
    提示：<br/>
    1、勾选心仪的栏目后才能在该栏目下发表文章，并有可能被推荐到首页;<br/>
    2、取消已添加过文章的栏目，会造成该类文章在个人管理中心没有访问入口。
</p>