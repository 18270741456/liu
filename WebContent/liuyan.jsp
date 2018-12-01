<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>  
  <body>
  <%@include file="logo.jsp" %>
   <%
    String name=(String)session.getAttribute("username");
    %>
   <BODY>&nbsp;<hr> 
<center> 
<form action=savememo.jsp method=get> 
<table border=1><tr> 
<td >姓名:</td> 
<td><input type=text size=20 name="name" value="<%=name%>" disabled></td></tr><tr> 
<td >Email:</td> 
<td><input type=text size=40 name="email"></td></tr><tr> 
<td >主题：</td> 
<td><input type=text size=60 name="subject"></td></tr><tr> 
<td valign=top >留言:</td> 
<td><textarea name="memo" rows=4 cols=60></textarea></td></tr> 
<tr align=center><td colspan=2><input type=submit method=send value=我要留言>
<input type=reset value=我要重写></td></tr> 
</table> 
</form> 
<hr> 
<center> 
<a href=opendata.jsp>管理留言</a> 
<a href=showall.jsp>查看留言</a> 

<%@include file="foot.jsp" %>
  </body>
  
</html>
