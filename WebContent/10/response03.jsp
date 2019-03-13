<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>response03实例</title>
</head>
<body>
<%
/*
Cookies是当你浏览某网站时，由Web服务器置于你硬盘上的一个非常小的文本文件
它可以记录你的用户ID、密码、浏览过的网页、停留的时间等信息。 当你再次来到
该网站时，网站通过读取Cookies，得知你的相关信息，就可以做出相应的动作，如
在页面显示欢迎你的标语，或者让你不用输入ID、密码就直接登录等等。
*/
    Cookie myCookie = new Cookie("lizongyu","hands");
    myCookie.setMaxAge(3600);
    response.addCookie(myCookie);

%>
</body>
</html>