<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- html注释，完全暴露给用户,可以在客户端看到 -->

<%-- jsp注释 ，客户端看不到--%>
<%=(new Date().toString()) %>
</body>
</html>