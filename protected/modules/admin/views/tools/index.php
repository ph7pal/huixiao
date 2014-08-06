<h3>缓存管理</h3>
<table class="table table-hover table-condensed">
    <tr>
        <td>
        	<?php echo CHtml::link('清理assets',array('tools/func','type'=>'assets'));?>
        	<span class="help-block">清理前端缓存的CSS、JS等</span>
        </td>
    </tr>
    <tr>
        <td>
        	<?php echo CHtml::link('清理runtime',array('tools/func','type'=>'runtime'));?>
        	<span class="help-block">清理缓存在本地的数据</span>
        </td>
    </tr>
    <tr>
        <td>
        	<?php echo CHtml::link('系统配置',array('tools/func','type'=>'config'));?>
        	<span class="help-block">重置系统设置</span>
        	</td>
    </tr>
</table>