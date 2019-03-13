<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
这是跳转页面
<%
    String username=request.getParameter("username");
    
    String password=request.getParameter("password");
    
    out.print("username:"+username.toString());
    out.println("<br/>");
    out.print("password:"+password.toString());
%>
</body>
</html>