<div class="media">
<div class="media-body">
    <h4 class="media-heading"><?php if($data['uid']){echo CHtml::link(Users::getUserInfo($data['uid'],'truename'),array('mobile/index','uid'=>$data['uid']),array('target'=>'_blank')).zmf::creditIcon($data['uid']).'<small>@</small>';}elseif($data['nickname']){ echo $data['nickname'].'<small>@</small>';}?><small><?php echo date('Y-m-d H:i',$data['cTime']);?></small></h4>
  <p><?php echo $data['content'];?></p>
</div>
</div>