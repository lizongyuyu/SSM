<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>信息展示</title>
</head>
<body>
用户名：<%=request.getAttribute("userName") %><br/>
技能：<%=request.getAttribute("skills") %>
</body>
</html>