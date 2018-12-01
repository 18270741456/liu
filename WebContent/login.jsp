<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
 <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/common2.css" rel="stylesheet" type="text/css" />
        <link href="css/header.css" rel="stylesheet" type="text/css" />
        <link href="css/footer.css" rel="stylesheet" type="text/css" />
        <link href="css/login.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <link type="text/css" rel="stylesheet" href="css/coolalert.css" />
        <script src="js/coolalert.js" type="text/javascript"></script>
</head>
<body>
 <%@include file="logo.jsp" %>
<div id="content" class="clearfix" style="width:1000px;">
                <!--------------------- content ---------------------->
               <form action="login">
                    <div class="login" style="float:left; margin-left: 300px;">
                        <div class="mb_20">
                            <div class="left font_16 font_orange" style="float:left;">
                                欢迎登录
                            </div>
                            <div class="right" style="float:right;">
                                还没有账户？
                                <span class="font_orange">
                                    <a href="Regist.jsp">
                                        30秒注册
                                    </a>
                                </span>
                            </div>                           
                        </div>                        
                        <p class="font_14">
                            用户名/邮箱/手机号：
                        </p>
                        <p class="mb_20">
                        
                            <input name="name" type="text" class="form1 w380" value="${requestScope.msg}"/>
                        </p>
                        <p class="font_14">
                            密码：
                        </p>
                        <p class="mb_20">
                            <input name="password" type="password" 
                            class="form1 w380" onkeydown="if(event.keyCode==13){yhdlzh();}" />
                        </p>
                        <p class="left mb_15">
                            <button class="button2 log" style=" width:380px;" type="submit" >
                                登 录
                            </button>
                        </p>
                         <p class="right">
                            <a href="yanzheng.jsp" style="float:right;">
                                忘记密码？
                            </a>
                        </p>
                    </div>
                   </div>
                <!--------------------- content end ---------------------->
            </div></form>
             <%@include file="foot.jsp" %>
</body>
</html>