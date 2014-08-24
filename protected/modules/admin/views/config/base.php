<h3>网站运行基本设置</h3>
<?php echo CHtml::hiddenField('type',$type);?>
<p><label>全站通知：</label><textarea class="form-control" name="noticeall"><?php echo $c['noticeall'];?></textarea></p>
<p><label>站点状态：</label>
    <select name="closeSite" id="closeSite">
        <option value="0" <?php if($c['closeSite']=='0'){?>selected="selected"<?php }?>>关闭</option>
        <option value="1" <?php if($c['closeSite']=='1'){?>selected="selected"<?php }?>>开启</option>
    </select>
</p>
<p><label>关闭原因：</label><textarea class="form-control" name="closeSiteReason"><?php echo $c['closeSiteReason'];?></textarea></p>	
<p><label>开启手机端：</label>
    <select name="mobile" id="mobile">
        <option value="0" <?php if($c['mobile']=='0'){?>selected="selected"<?php }?>>关闭</option>
        <option value="1" <?php if($c['mobile']=='1'){?>selected="selected"<?php }?>>开启</option>
    </select>
</p>
<p><label>仅显示置顶：</label>
    <select name="orderByTop" id="orderByTop">
        <option value="0" <?php if($c['orderByTop']=='0'){?>selected="selected"<?php }?>>关闭</option>
        <option value="1" <?php if($c['orderByTop']=='1'){?>selected="selected"<?php }?>>开启</option>
    </select>
</p>
<p><label>新用户默认组别：</label>
    <?php echo CHtml::dropDownList('userDefaultGroup',$c['userDefaultGroup'],UserGroup::getGroups(true),array('options' => array($info['userDefaultGroup']=>array('selected'=>true)))); ?>
</p>
<p><label>商家用户组：</label>
    <?php 
    echo CHtml::dropDownList('shopGroupId',$c['shopGroupId'],UserGroup::getGroups(true),array('options' => array($info['shopGroupId']=>array('selected'=>true)))); ?>
</p>
<p><label title="禁止非商家用户访问商家管理页面">禁止非商家：</label>
    <select name="forbidnotshop" id="forbidnotshop">
        <option value="0" <?php if($c['forbidnotshop']=='0'){?>selected="selected"<?php }?>>否</option>
        <option value="1" <?php if($c['forbidnotshop']=='1'){?>selected="selected"<?php }?>>是</option>
    </select>
</p>
<p><label>后台用户组：</label>
    <?php 
    if($c['adminGroupIds']!=''){
        $arr=  explode(',', $c['adminGroupIds']);
        $_adArr=array();
        foreach($arr as $v){
            $_adArr[$v]=array('selected'=>true);
        }
    }
    echo CHtml::dropDownList('adminGroupIds',$c['adminGroupIds'],UserGroup::getGroups(true),array('options' => $_adArr,'class'=>'form-control','multiple'=>'true')); ?>
</p>
<p><label>官方展示用户：</label><input class="form-control" name="officalUid" id="officalUid" value="<?php echo $c['officalUid'];?>"/></p>
<p><label>验证用户邮箱：</label>
    <select name="validateEmail" id="validateEmail">
        <option value="0" <?php if($c['validateEmail']=='0'){?>selected="selected"<?php }?>>否</option>
        <option value="1" <?php if($c['validateEmail']=='1'){?>selected="selected"<?php }?>>是</option>
    </select>
</p>
<p><label>验证邮箱后的用户组：</label>
    <?php echo CHtml::dropDownList('validateEmailGroup',$c['validateEmailGroup'],UserGroup::getGroups(true),array('options' => array($info['validateEmailGroup']=>array('selected'=>true)))); ?>
</p>
<p><label>搜索关键词("#"隔开)：</label><textarea class="form-control" name="hotsearchs"><?php echo $c['hotsearchs'];?></textarea></p>
<p><label>开启敏感词提醒：</label>
    <select name="checkBadWords" id="checkBadWords">
        <option value="0" <?php if($c['checkBadWords']=='0'){?>selected="selected"<?php }?>>否</option>
        <option value="1" <?php if($c['checkBadWords']=='1'){?>selected="selected"<?php }?>>是</option>
    </select>
</p>
<p><label>敏感词("#"隔开)：</label><textarea class="form-control" name="badwords"><?php echo $c['badwords'];?></textarea></p>
<div class="form-group"><label>敏感词触发处理方式：</label>
    <select name="badwordsHandleStyle" id="badwordsHandleStyle">
        <option  value='filter' <?php if($c['badwordsHandleStyle']=='filter'){?>selected="selected"<?php }?>>仅过滤</option>
        <option  value='notice' <?php if($c['badwordsHandleStyle']=='notice'){?>selected="selected"<?php }?>>仅通知</option> 
        <option  value='filterNotice' <?php if($c['badwordsHandleStyle']=='filterNotice'){?>selected="selected"<?php }?>>过滤通知</option>
        <option  value='forbidden' <?php if($c['badwordsHandleStyle']=='forbidden'){?>selected="selected"<?php }?>>禁止通过</option>
    </select>
</div>
