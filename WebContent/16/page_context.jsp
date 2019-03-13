<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>page_context对象</title>
</head>
<body>
<%
    
    JspWriter writer = pageContext.getOut();
    writer.print("JspWriter对象"+"<br/>");
    pageContext.setAttribute("nick", 123456, pageContext.SESSION_SCOPE);
    String str = session.getAttribute("nick").toString();
    writer.print(str);
%>
</body>
</html>