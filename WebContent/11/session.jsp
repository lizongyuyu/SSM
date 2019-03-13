<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--session对象：记录用户的请求信息，从而保证用户的连续状态，相当远一把钥匙--%>
<%--session对象使用	 --%>
session的唯一标识符：<%=session.getId() %><br/>
session的创建时间：<%=new Date(session.getCreationTime()).toString() %><br/>
session的最后访问时间：<%=new Date(session.getLastAccessedTime()).toString() %><br/>
session的最后失效时间:<%=session.getMaxInactiveInterval() %>
</body>
</html>