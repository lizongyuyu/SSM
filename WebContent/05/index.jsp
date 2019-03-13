<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--这是无参传递--%>

<jsp:forward page=""></jsp:forward>

<%--有参构造函数 --%>

<jsp:forward page="login.jsp">
    <jsp:param value="nick" name="username"/>
    <jsp:param value="123456" name="password"/>
</jsp:forward>
