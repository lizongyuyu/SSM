<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page buffer="10kb" %><!-- 设置缓冲区大小 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    out.print("刷新前的数据1");
    out.flush(); //强制刷新缓冲区数据，显示到客户端页面
    /* out.clearBuffer();  */
    /* out.clear();  *///clear和flush不能同时存在
    out.newLine();
    out.println("当前缓冲区大小："+out.getBufferSize());
    out.println("当前缓冲区剩余字节"+out.getRemaining());

%>

</body>
</html>