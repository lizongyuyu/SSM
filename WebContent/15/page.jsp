<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page对象演示</title>
</head>

<body>
<!-- page对象是object对象内置类 -->
<%
    out.println("page对象的字符串:"+page.toString()+"<br/>");
    //page.equals(obj);
    out.println("page对象的类型:"+page.getClass()+"<br/>"); 
    out.println("page对象的hashcode:"+page.hashCode()+"<br/>");
%>
</body>
</html>