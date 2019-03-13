<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>异常处理</title>
</head>
异常描述：
<body>
<%
    out.println(exception.getMessage()); 
%>
    <br/>
    exception对象的字符串描述:
<%
    out.println(exception.toString());
%>
    <br/>
      打印异常的错误输出流：
<%
    exception.printStackTrace();
%>
</body>
</html>