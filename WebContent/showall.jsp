<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="domain.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
  <%@include file="logo.jsp" %>
    <%
    	
    List<User> user=(List<User>)session.getAttribute("user");
    for(User u:user){
    System.out.print(u.getCity());
    }
     /*  out.print("<center>"); 
      out.print("<table border=1>");
      out.print("<tr>");
      out.print("<td bgcolor=yellow>姓名</td>");
      out.print("<td bgcolor=yellow>电话</td>");
      out.print("<td bgcolor=yellow>性别</td>");
      out.print("<td bgcolor=yellow>所在城市</td>");
      for(User u:user){
    
	out.print("<tr>");
	out.print("<td>"+u.getName()+"</td>"); 
	out.print("<td>"+u.getPhone()+"</td>"); 
	out.print("<td>"+u.getSex()+"</td>"); 
	out.print("<td>"+u.getCity()+"</td>");
	out.print("</tr>");
	
	} 
	  
	out.print("</table><p>"); 
	
	  */
	 %>
	 <%@include file="foot.jsp" %>
	  </body>
	</html>
