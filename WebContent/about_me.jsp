<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
</head>
<body>
<%@include file="logo.jsp" %>
    <div style="margin-left: 550px;">
    <% String username=(String)session.getAttribute("name"); %>
   <p align="center"><h2><%=username %>,的留言板!</h2></p>
    <form action="messagePane.jsp" method="post" name="form">
        <p>输入你的留言标题:
        <input type="text" name="Title"><br>
        <p>输入你的留言:
        <textarea rows="10" cols="36" wrap="physical" name="messages"></textarea><br>
        <input type="submit" value="提交信息" name="submit">
    </form>
    
    <form action="showMassage.jsp" method="post" name="form1">
         <input type="submit" vaule="查看留言板" name="look">
    </form>
    </div>
    <%@include file="foot.jsp" %>
</body>
</html>