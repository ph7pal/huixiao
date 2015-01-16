var nicknameKey = 1;
var tagnameKey = 1;
var hasEditedContent = '';
function delUploadImg(attachid, clearid) {
    if (attachid == '') {
        dialog('请选择删除对象');
    }
    $.ajax({
        type: "POST",
        url: delUploadImgUrl,
        data: "attachid=" + attachid + "&YII_CSRF_TOKEN=" + csrfToken,
        success: function(result) {
            result = eval('(' + result + ')');
            if (result['status'] == 1) {
                $("#uploadAttach" + attachid).fadeOut();
                $("#uploadAttach" + attachid).html('');
                if (typeof clearid != 'undefined') {
                    $("#" + clearid).val('');
                    $("#" + clearid).html('');
                }
                return true;
            } else {
                dialog(result['msg']);
                return false;
            }
        }
    });
}
function loading(divid, type, desc) {
    if (typeof type == 'undefined') {
        type = 0;
    }
    if (type == 0 || type == 2) {
        margin = ';margin:8px 0 0 0'
    } else {
        margin = '';
    }
    if (typeof desc == 'undefined') {
        desc = '正在加载中，请稍候...';
        descstr = "<span style='height:32px;line-height:32px;display:block;float:left'>" + desc + "</span>";
    } else if (desc == '') {
        descstr = '';
    } else {
        descstr = "<span style='height:32px;line-height:32px;display:block;float:left'>" + desc + "</span>";
    }
    var loadingstr = "<span style='height:32px;float:left" + margin + "'><img src='" + baseUrl + "/images/loading" + type + ".gif'/></span>" + descstr;
    $("#" + divid).html(loadingstr);
}
var tipsImgOrder = 0;
var mystat;
function singleUploadify(placeHolder, inputId, limit) {
    var swfuploadify = $("#" + placeHolder).uploadify({
        height: 30,
        width: 120,
        swf: baseUrl + '/common/uploadify/uploadify.swf',
        queueID: 'singleFileQueue',
        auto: true,
        multi: true,
        uploadLimit: limit,
        fileObjName: 'filedata',
        fileTypeExts: '*.jpg;*.jpeg;*.gif;*.png',
        fileTypeDesc: 'Image Files',
        uploader: imgUploadUrl,
        buttonText: '请选择',
        formData: {'PHPSESSID': currentSessionId, 'YII_CSRF_TOKEN': csrfToken},
        onUploadSuccess: function(file, data, response) {
            data = eval("(" + data + ")");
            mystat = this;
            if (data['status'] == 1) {
                var id = parseInt(10000 * Math.random());
                var img = "<div class='pull-left' style='width:124px;' id='" + id + "'><img src='" + data['imgsrc'] + "'/><p class='text-center'><a href='javascript:;' onclick=\"minDelImg('" + id + "','" + inputId + "','" + data['attachid'] + "',this);\">删除</a></p><input type='hidden' name='uploadAttach[]' value='"+data['attachid']+"'/></div>";
                $("#fileSuccess").append(img);
                $("#" + inputId).val(data['attachid']);
            } else {
                var stats = mystat.getStats();
                stats.successful_uploads--;
                mystat.setStats(stats);
                alert(data['msg']);
            }
            tipsImgOrder++;
        }
    });
}
var tipsImgOrder=0;
function myUploadify(){   
    $("#uploadfile").uploadify({
        height        : 44,
        width         : 183,
        swf           : baseUrl+'/common/uploadify/uploadify.swf',
        queueID:'fileQueue',
        auto:true,
        multi:true,        
        fileObjName:'filedata',
        uploadLimit:perAddImgNum,
        fileSizeLimit:allowImgPerSize,
        fileTypeExts:allowImgTypes,
        fileTypeDesc:'Image Files',
        uploader:tipImgUploadUrl,        
        buttonText:' ',
        debug:false,
        formData:{
            'PHPSESSID':currentSessionId
        },
        onUploadSuccess:function(file,data,response){
            data=eval("("+data+")");            
            if(data['status']==1){
                var img="<p><img src='"+data['imgsrc']+"' width='530' data='"+data['attachid']+"'/></p><br/>";
                myeditor.execCommand("inserthtml",img);
            ///addimage(data['url']);
            }else{
              alert(data['msg']);
            }
            tipsImgOrder++;
        }
    }); 
}
function minDelImg(a, b, c, d) {
    $("#" + a).remove();
    $("#" + b).val('');
    delUploadImg(c);
    var stats = mystat.getStats();
    stats.successful_uploads--;
    mystat.setStats(stats);
}
function clearDiv(divid) {
    $("#" + divid).html('');
}
function openDiv(divid) {
    $("#" + divid).toggle();
}
function setStatus(a,b,c){
    $.ajax({
        type: "POST",
        url: setStatusUrl,
        data: "a="+a+"&b="+b+"&c="+c+"&YII_CSRF_TOKEN=" + csrfToken,
        beforeSend: function() {
            //loading("favorite"+logid,2,'');
        },
        success: function(result) {
            result = eval('(' + result + ')');
            if (result['status'] == 1) {
                alert(result['msg']);                
            } else if (result['status'] == 2) {
                window.location.href = userLoginUrl + "&redirect=" + window.location.href;
            } else {
                //$("#favorite" + logid).html(tmp);
                alert(result['msg']);
            }
        }
    });
}
function changeOrder(){
var ids='';
    $('#sortable li').each(function(){
        ids+=$(this).attr('id')+'#';
    });    
    $.ajax({
    type: "POST",
    url: changeOrderUrl,
    data:"ids="+ids+"&YII_CSRF_TOKEN="+csrfToken,
    success: function(result) {           
        result = eval('('+result+')');  
        if(result['status']=='1'){  
            alert(result['msg']);
            window.location.reload();
        }else{
            alert(result['msg']);
        }
    }
});  
}
function checkBitian(){
  if($('#localarea').val()==''){
    alert('请选择地区');
    return false;
  }  
  var hasError=false;
  $(".bitian").each(function(){
    if($(this).val()==''){
      $(this).closest('p').addClass('has-error');
      hasError=true;
    }else{
      $(this).closest('p').removeClass('has-error');
    }
  });  
  if(hasError){
    return false;
  }else{
    return true;
  }  
}
function deletePost(a, b, c) {
  if (a == '') {
    alert('请选择对象');
    return false;
  }
  if (b == '' || typeof b == 'undefined') {
    alert('删除类型不能为空');
    return false;
  }
  $.ajax({
    type: "POST",
    url: delPostUrl,
    data: "logid=" + a + "&type=" + b + "&YII_CSRF_TOKEN=" + csrfToken,
    success: function(result) {
      result = eval('(' + result + ')');
      if (result['status'] == 1) {
        if (c !== '' && c !== 'undefined') {
          location.href = c;
        }
        $("#" + b + '_' + a).fadeOut();
        dialog({msg:result['msg'],time:2});
      } else {
        dialog({msg:result['msg']});
      }
    }
  });
}