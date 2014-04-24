 <div class="indexGoods">
      <h4><?php echo $info['first']['title'];?><small><?php echo strtoupper($info['first']['name']);?></small></h4>
    <div class="scrollBox">
      <div class="goodsImage">
        <ul class="list" >
        	<?php 
                $listposts=Posts::listPosts($info['first']['id']);
                if(!empty($listposts)){
                foreach($listposts as $_list){
                   $faceImg=  Attachments::getOne($_list['attachid']); 
                    ?>
            <li style="float: left; width: 162px; ">
            	<div style="width:160px;height:160px;margin:0 auto;background:url(<?php //echo zmf::uploadDirs($faceImg['logid'], 'site', $faceImg['classify'], '124').'/'.$faceImg['filePath'];?>http://112.124.57.128/chinalenovorka/attachments/coverimg/300/35/534caeefabf47.png) no-repeat center"></div>                
                <span><?php echo CHtml::link($_list['title'],array('posts/show','id'=>$_list['id']),array('target'=>'_blank'));?></span>
            </li> 
                <?php }}?>     
        </ul>
        </div>
    </div>
  </div>
   <script type="text/javascript">
    jQuery(".indexGoods").slide({ mainCell:"ul", effect:"leftMarquee", vis:5, autoPlay:true, interTime:50, switchLoad:"_src" });	
  </script>