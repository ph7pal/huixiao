<div id="comment">    
    <?php if(!empty($coms)){?>
    <h4>最新评论</h4>
    <div class="bmc">        
        <?php foreach($coms as $com):?> 
            <?php $this->renderPartial('/common/_comment',array('data'=>$com));?>
        <?php endforeach;?>
    </div>
    <div class="pagebar clear"><?php  $this->renderPartial('/common/pager',array('pages'=>$pages)); ?></div>        
    <?php }?>    
    <?php $this->renderPartial('/common/minCommentForm',array('keyid'=>$keyid,'type'=>$type));?>
</div>
