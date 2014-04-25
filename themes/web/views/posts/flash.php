<div class="row">
<div class="scrollBox">
    <ul class="list" >
            <?php 
            $listposts=Posts::listPosts($info['colinfo']['id']);
            if(!empty($listposts)){
            foreach($listposts as $_list){
               //$faceImg=  Attachments::getOne($_list['attachid']); 
                ?>
        <li style="float: left; width: 162px; ">
            <div style="width:160px;height:160px;margin:0 auto;background:url(<?php //echo zmf::uploadDirs($faceImg['logid'], 'site', $faceImg['classify'], '124').'/'.$faceImg['filePath'];?>http://112.124.57.128/chinalenovorka/attachments/coverimg/300/35/534caeefabf47.png) no-repeat center"></div>                
            <span><?php echo CHtml::link($_list['title'],array('posts/show','id'=>$_list['id']),array('target'=>'_blank'));?></span>
        </li> 
            <?php }}?>     
    </ul>
</div>
</div>
<script type="text/javascript">
 //jQuery(".scrollBox").slide({ mainCell:"ul", effect:"leftMarquee", vis:5, autoPlay:true, interTime:50, switchLoad:"_src" });	
</script>