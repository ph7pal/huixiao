<?php 
if($colinfo){
$colid=$colinfo['id'];
$listposts=Posts::listPosts($colid);
if(!empty($listposts)){?>
<div class="txtMarquee-left">
    <div class="bd">
       <ul class="infoList">
        <?php foreach($listposts as $key=>$ci){?>
        <li><?php echo CHtml::link(zmf::subStr($ci['title'], 15), array('posts/show', 'id' => $ci['id'])); ?><span>[<?php echo date('m-d',$ci['cTime']);?></span></li>
        <?php }?>
       </ul>
    </div>
<script id="jsID" type="text/javascript">jQuery(".txtMarquee-left").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:4,interTime:50,trigger:"click"});</script>
</div>
<?php }}?>