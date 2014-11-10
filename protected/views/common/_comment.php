<div class="comment_list_z">
    <p><?php if($data['uid']){echo CHtml::link(Users::getUserInfo($data['uid'],'truename'),array('mobile/index','uid'=>$data['uid']),array('target'=>'_blank')).zmf::creditIcon($data['uid']);}elseif($data['nickname']){ echo $data['nickname'];}?></p>
  <p><?php echo $data['content'];?></p>
  <p><?php echo date('Y-m-d H:i',$data['cTime']);?></p>
</div>