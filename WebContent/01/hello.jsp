<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
JSP表达式输出:<%="helloworld" %>
<br/>
<%! 
    String str = "hello world";
%>
<%
    //String str = "hello world";
    out.println(str);
%>
</body>
</html>