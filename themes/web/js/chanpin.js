//表单焦点方法

(function(jQuery) {
    jQuery.fn.gFocus = function(txt){
        jQuery(this).bind("focus",function(){
            if(jQuery(this).val() == txt){ jQuery(this).val(""); };
        });
        jQuery(this).bind("blur",function(){
            if(jQuery(this).val() == ""){ jQuery(this).val(txt); };
        });	
    };
})(jQuery);
jQuery(window).load(function() {
	
    //搜索框的提示信息
    jQuery(".s_input").gFocus("商品名称/功效/症状/厂家名");
    jQuery(".buy_box .pro_info").gFocus("请输入您要求购的商品信息");
    jQuery(".buy_box .phone").gFocus("请输入您的联系电话");
    jQuery(".buy_box .name").gFocus("请输入您的姓名");
    jQuery(".buy_box .add").gFocus("请输入代理区域");
    jQuery(".buy_box .num").gFocus("请输入团队人数");
	
    //筛选项数量的控制
    jQuery(".select .b_cont").each(function(){
        var num = jQuery(this).find("li").length;
        if( num > 8) {
            jQuery(this).siblings(".b_btn").show();
            var ie6=!-[1,]&&!window.XMLHttpRequest;
            //IE6浏览器
            if(ie6) {
                jQuery(this).css("height",30);
                jQuery(this).siblings(".b_btn").click(function(){
                    var bei = (num - 1)/4 + 1;
                    var h = bei * 30;
                    if(jQuery(this).text()=="展开") {
                        jQuery(this).text("收起").addClass("up_icon");

                        jQuery(this).siblings(".b_cont").css("height",h);
                    }else{
                        jQuery(this).text("展开").removeClass("up_icon");
                        jQuery(this).siblings(".b_cont").css("height",30);
                    }
                });
			
            }else{
                //其它浏览器
                jQuery(this).siblings(".b_btn").click(function(){
                    var bei = (num - 1)/4 + 1;
                    var h = bei * 30;
                    if(jQuery(this).text()=="展开") {
                        jQuery(this).text("收起").addClass("up_icon");
                        jQuery(this).siblings(".b_cont").css("max-height",h);
                    }else{
                        jQuery(this).text("展开").removeClass("up_icon");
                        jQuery(this).siblings(".b_cont").css("max-height",30);
                    }
                });
            }
        }	
    });
	
    //求购弹出框
    jQuery(".b_buy .btn").click(function(){
        jQuery(".b_buy .buy_box").show();
    });
    jQuery(".b_buy .res_btn").click(function(){
        jQuery(".b_buy .buy_box").hide();
    });
	
    //隐藏其他选项   
    jQuery(function(){
        jQuery(".b_btn_2").show().text("更多选项");
        jQuery(".b_btn_2").hover(function(){
            jQuery(".b_btn_2").addClass("hover");
        },function(){
            jQuery(".b_btn_2").removeClass("hover");
        });
        jQuery(".b_btn_2").toggle(function(){
            jQuery(".hidden").hide().animate({height: 'toggle', opacity: 'toggle'}, "1500");
            jQuery(".b_btn_2").text("隐藏选项");
        },function(){
            jQuery(".hidden").show().animate({height: 'toggle', opacity: 'toggle'}, "1500");
            jQuery(".b_btn_2").text("更多选项");
        });
    });
	
	
	
    //图片等比压缩
    jQuery(".b_search .b_result .pic, .b_search .p_rec .pic").compre_pic();
  
   
    //选择价格弹出清空、确定按钮
    jQuery(".sel_price input").focus(function(){
        jQuery(".b_search .sel_bg").show();	
    });
    jQuery(".sel_bg .cl_empty").click(function(){
        jQuery(".sel_price input").val("");
    });
	
    //限制功能主治内容高度
    jQuery(".big_mod .b_info .gnzz, .b_search .p_rec .p_info").each(function() {
        var h = jQuery(this).height();
        if(h > 32) {
            jQuery(this).css("height",32);
        }  
    });

});

//关闭不要的已选项
function removeSelected(obj){
    jQuery(obj).remove();
}


//图片按比例压缩
(function ($) {
     $.fn.compre_pic = function (opt) {
      
        //初始化各属性
        opt = $.extend({
            containsPic:true//图片在框以内并作垂直水平居中处理
        },opt);
		
        var self = $(this),
			containsPic = opt.containsPic,
			imgW = imgH = padT = padL = 0;
		
        main();
        function main(){
            self.each(function(){
                var contW = jQuery(this).width(),
					contH = jQuery(this).height(),
					W = jQuery(this).find("img").width(),
					H = jQuery(this).find("img").height(),
					img = jQuery(this).find("img");
					
                if(W >= contW  && W >= H) {
                    imgH = (contW/W)*H;
                    padT = (contH - imgH )/2;
					
                    if(imgH > contH){
                        var img_W = (contH/imgH)*contW;
                        var img_padL = (contW - img_W)/2;
                        img.css({width:img_W, height:contH,paddingTop:padT,paddingLeft:img_padL});
                    }else{
                        img.css({width:contW, height:imgH,paddingTop:padT});
                    }
                }
				
                else if(H >= contH && H >= W) {
                    imgW = (contH/H)*W;
                    padL = (contW-imgW)/2;
					
                    if(imgW > contH){
                        var img_H = (contH/imgW)*contH;
                        var img_padT = (img_H - img_H)/2;
                        img.css({Height:contH,width:imgW,paddingLeft:padL,paddingTop:img_padT});
                    }else{
                        img.css({Height:contH,width:imgW,paddingLeft:padL});
                    }
                }
				
                else{
                    padT = (contH - H)/2;
                    padL = (contW - W)/2;
                    img.css({paddingTop:padT, paddingLeft:padL});
                }
			
            });
			
        }
		
    }
})(jQuery);	


(function(jQuery) {
    jQuery.fn.hoverForIE6 = function(option) {
        var s = jQuery.extend( {
            current : "hover",
            delay : 10
        }, option || {});
        jQuery.each(this, function() {
            var timer1 = null, timer2 = null, flag = false;
            jQuery(this).bind("mouseover", function() {
                if (flag) {
                    clearTimeout(timer2);
                } else {
                    var _this = jQuery(this);
                    timer1 = setTimeout( function() {
                        _this.addClass(s.current);
                        flag = true;
                    }, s.delay);
                }
            }).bind("mouseout", function() {
                if (flag) {
                    var _this = jQuery(this);
                    timer2 = setTimeout( function() {
                        _this.removeClass(s.current);
                        flag = false;
                    }, s.delay);
                } else {
                    clearTimeout(timer1);
                }
            })
        })
    }
})(jQuery);


jQuery(document).ready(function () {
    jQuery(".cl_empty").click(function () {
        clsPrice();
    });
    jQuery(".sum_pri").click(function () {
        filterByPrice();
    });
    /*大图和列表切换显示*/
    $(".big_view").click(function () {
         $(".b_search").addClass("big_mod");
        if ($(".b_search").hasClass("list_mod")) {
            $(".b_search").removeClass("list_mod");
        }
    });
    $(".list_view").click(function () {
        $(".b_search").addClass("list_mod");
        if ($(".b_search").hasClass("big_mod")) {
            $(".b_search").removeClass("big_mod");
        }
    });
});


    function filterByPrice() {
        var st = jQuery("#price_st").val();
        var en = jQuery("#price_en").val();
        jQuery("#f_price_st").val(st);
        jQuery("#f_price_en").val(en);
    }
    function clsPrice() {
        jQuery("#price_st").val("");
        jQuery("#price_en").val("");
        jQuery(".sel_bg").css("display", "none");


    }
    function setStyle(s) {
        jQuery("#style").val(s);
        jQuery("#searchProductForm").submit();
    }
    function qiugou() {
        $(".buy_box").show();
    }
    function quxiao() {
        $(".buy_box").hide();
    }
  