<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>config</title>
</head>
<body>
用户名：<%=config.getInitParameter("username") %>
密码：<%=config.getInitParameter("password") %>
</body>
</html>