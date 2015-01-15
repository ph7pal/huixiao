<style>
html, body{margin:0; padding:0; border:0 none;font-family:microsoft yahei,tahoma,simsun,Helvetica,Arial,sans-serif;background: #FFF;}
a{text-decoration:none; color:#174B73;}
a:hover{color:#F60;}
div.message{margin:100px auto 0 auto;clear:both;text-align:center; width:450px;border:1px solid #04AEDA}
.msg,.tip,.error,.success{width:100%;height:50px;line-height:50px}
.msg{background:none;font-size:14px}
.msg{background:none;color:#04AEDA}
.tip{font-size:12px;color:#FFF;background:#04AEDA}
.wait{color:#C71585;font-weight:bold}
.error{color:#C71585}
.success{color:green}
</style>   
<div class="message">	
<div class="msg">
<?php if(!empty($success)){?>
 <p class="success"><?php echo($success); ?></p>   
<?php }else{?>
 <p class="error"><?php echo($error); ?></p>   
<?php }?>   
    
</div>
<div class="tip">
<p class="detail"></p>
<p class="jump">
页面自动 <a id="href" href="<?php echo($jumpUrl); ?>" target="_top">跳转</a> 等待时间： <b id="wait"><?php echo($waitSecond); ?></b>
</p>
</div>
</div>
<script type="text/javascript">
(function(){
var wait = document.getElementById('wait'),href = document.getElementById('href').href;
var interval = setInterval(function(){
	var time = --wait.innerHTML;
	if(time <= 0) {
		location.href = href;
		clearInterval(interval);
	};
}, 1000);
})();
</script>