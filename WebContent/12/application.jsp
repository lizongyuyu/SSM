<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>application对象展示</title>
</head>
<body>
服务器名称：<%=application.getServerInfo() %><br/>
应用名称：<%=application.getServletContextName() %><br/>
主机名称：<%=application.getVirtualServerName() %>

</body>
</html>