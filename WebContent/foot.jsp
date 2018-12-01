<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>尾部</title>
<link href="css/index/style.css" rel="stylesheet" type="text/css">
        <link href="css/index/top.css" rel="stylesheet" type="text/css">
        <link href="css/index/common.css" rel="stylesheet" type="text/css">
        <link href="css/index/banner.css" rel="stylesheet" type="text/css">
        <link href="css/index/float_nav.css" rel="stylesheet" type="text/css">
        <link href="css/index/popover.css" rel="stylesheet" type="text/css">
        <link href="css/index/udesk.css" rel="stylesheet" type="text/css">
</head>
<body>
<div style="width:100%;">
<footer id="footer">
                 <hr size="1" border=none color="#b0acaa" width="100%">
                <div class="foot_menu">
                    <a href="about.jsp">
                        关于灰购商城
                    </a>
                    |
                    <a href="liuyan.jsp">
                        联系我们
                    </a>
                    |
                    <a href="add_we.jsp">
                        加入我们
                    </a>
                                  </div>
                <div class="al_center">
                    <p>
                        Copyright © 2014 JuZiFenQi All Right Reserved 萍乡学院信息与计算机工程学院16软件工程1班&nbsp;&nbsp;
                        
                    </p>
                    <div class="foot_icon">
                    </div>
                </div>
            </footer>
        </div>
      
      <!--   
        <div id="float">
            <a href="liuyan.jsp" class="consult" target="_blank">
            </a>
            <a href="cart_see.jsp" class="cart">
            </a>
            <a href="javascript:void(0)" class="btn_top" style="display: none;">
            </a>
        </div> 
        <div class="alert_windows">
            <img src="images/top-tips.gif" width="600" height="388">
            <span>
                X
            </span>
        </div>
        <script src="js/index/udesk_feedback.js" type="text/javascript">
        </script>
        <div id="udesk-feedback-tab" title=" " class="udesk-feedback-tab-left"
        style="display: block; background-color: black;">
            <div>
            </div>
        </div>
        <div id="udesk-feedback-overlay" style="display: none;">
            <div id="udesk-feedback-container">
                <div id="udesk-feedback-header">
                    <img id="udesk-feedback-close" src="images/close.png">
                </div>
            </div>
            <div id="udesk-feedback-backdrop">
                &nbsp;
            </div>
        </div>-->
        <link href="css/index/coolalerty.css" rel="stylesheet" type="text/css">
        <div class="themey-popover-mask">
        </div>
        <div class="themey-popover" style="display:none">
            <div class="themey-poptit">
                灰购分期温馨提示
            </div>
            <div class="themey-popbod">
                <div class="themey-box" id="neirongy">
                </div>
                <div class="themey-box2">
                    <button class="button3" id="zdcyonghuiche" type="button" onclick="coolalertguanbi()"
                    onkeydown="if(event.keyCode==13){coolalertguanbi();}">
                        确 定
                    </button>
                    <input type="hidden" id="wjstz">
                </div>
            </div>
        </div>
		<script>
			$(function(){
				//代码初始化
				var size=$('.rotaion_list li').size();
				for (var i = 2; i <= size; i++) {
					var li="<span>"+i+"</span >";
					$('.yx-rotation-focus').append(li);
				};
				//手动控制轮播图
				$('.rotaion_list li').eq(0).show();
				$('.yx-rotation-focus span').eq(0).addClass('hover');
				$('.yx-rotation-focus span').mouseover(function(){
					$(this).addClass('hover').siblings().removeClass('hover');
					var index=$(this).index();
					i=index;
					$('.rotaion_list li').eq(index).stop().fadeIn(300).siblings().stop().fadeOut(300);
				})
				//自动播放
				var i=0;
				var t=setInterval(move,1500);
				//自动播放核心函数
				function move(){
					i++;
					if(i==size){
						i=0;
					}
					$('.yx-rotation-focus span').eq(i).addClass('hover').siblings().removeClass('hover');
					$('.rotaion_list li').eq(i).fadeIn(300).siblings().fadeOut(300);
				}

				//向右播放核心函数
				function moveL(){
					i--;
					if(i==-1){
						i=size-1;
					}
					$('.yx-rotation-focus span').eq(i).addClass('hover').siblings().removeClass('hover');
					$('.rotaion_list li').eq(i).fadeIn(300).siblings().fadeOut(300);
				}
				$('.yx-rotaion .left').click(function(){
						moveL();
				})
				$('.yx-rotaion .right').click(function(){
					move();
				})
				//鼠标移入移除
				$('.yx-rotaion').hover(function(){
					clearInterval(t);
				},function(){
					t=setInterval(move,1500);
				})
			})
	</script>
</body>
</html>