<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>
             注册
        </title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/common2.css" rel="stylesheet" type="text/css" />
        <link href="css/header.css" rel="stylesheet" type="text/css" />
        <link href="css/footer.css" rel="stylesheet" type="text/css" />
        <link href="css/login.css" rel="stylesheet" type="text/css" />
        <link href="css/popover.css" rel="stylesheet" type="text/css">
        <link href="css/sidefloat.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <link href="css/selects.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/date.css">
</head>
<body>
 <%@include file="logo.jsp" %>
 <s:fielderror></s:fielderror>
 <form action="register">
 <div id="content" class="clearfix" style="width:1000px;">
 <div class="mtb_50">
                    <ul class="register_title">
                        <li class="active" style=" float:left;margin-left:319px;display: inline;">
                            注 册
                        </li>
                    </ul>
                    <dl class="dl4">
                        <dt>
                            <span class="font_red">*</span>
                            手机号:
                        </dt>
                        <dd>
                            <input  name="phone"  type="text" class="form4" />
                            &nbsp;
                            <span id="yhmpd">                                
                            </span>
                            <div class="tipinfo">
                            </div>
                        </dd>
                        <dt>
                            <span class="font_red">*</span>
                            用户名:
                        </dt>
                        <dd>
                            <input id="name" name="name" type="text" class="form3 inputtext" value="" />
                            
                            <div class="tipinfo">
                            </div>
                        </dd>
                        <dt>
                            <span class="font_red">*</span>
                           性别:
                        </dt>
                        <dd>
                            <input id="sex" name="sex" type="text" class="form3 inputtext" value="" />
                            <input type='hidden' id="ceshi">
                            
                            </span>
                            <div class="tipinfo">
                            </div>
                        </dd>
                        
                        <dt>
                        
                            <span class="font_red">*</span>
                            密码：
                        </dt>
                        <dd>
                            <input  name="password" id="password" type="password" class="form4" />
                            &nbsp;
                            <span id="yhmmm">                               
                            </span>
                            <div class="tipinfo">
                            </div>
                        </dd>
                        <dt>
                            <span class="font_red">*</span>
                            再次输入密码：
                        </dt>
                        <dd>
                            <input name="repassword" id="repassword" type="password" class="form4" />
                            <span id="mmbyz" style="color: #F30;">
                            </span>
                            <div class="tipinfo">
                            </div>
                        </dd>
                        <dt>
                        
                            <span class="font_red">*</span>
                            住址：
                        </dt>
                        <dd>
                            <input id="city" name="city" type="text" class="form4" />
                            &nbsp;
                            <span id="yhmmm">
                               
                            </span>
                            <div class="tipinfo">
                            </div>
                        </dd>
                        <dd>
                            <div style="float:left; margin-left: 400px;">
                            <button class="button2 log" style=" width:200px;" type="submit" >
                                确认
                            </button>
                            </div>
                            <div class="theme6-popover-mask">
                            </div>                            
                        </dd>
                    </dl>
                    <div class="clear">
                    </div>
                    </div>
                </div>
                </form>
                 <%@include file="foot.jsp" %>
</body>
</html>