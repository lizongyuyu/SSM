<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>response</title>
</head>
<body>
<%-- response用于对客户端请求进行回应，http链接信息，http文件头和cooikes信息--%>
<%
    
    response.setHeader("Cache-control","no-cache");//cache-control用于对服务器缓存的信息管理，no—cache表示不用缓存
    response.setIntHeader("Refresh",2);//每隔两秒刷新一次
    out.println("date:"+new java.util.Date().toString());

%>
</body>
</html>