<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="com.jikexueyuan.entity.UserEntity"></jsp:useBean>
<jsp:setProperty property="userName" name="user"/>
<jsp:setProperty property="password" name="user"/>
<%
    String username = request.getParameter("userName");
    String password = request.getParameter("password");
%>
<br/>
<jsp:getProperty property="userName" name="user"/>
<jsp:getProperty property="password" name="user"/>
</body>
</html>