<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request</title>
</head>
<body>
    <form action="" method="post">
      <input type="text" name="username"/>
      <%out.println("<br/>");%>
      <input type="submit" value="提交"/>
    </form>
获取方法名：<%= request.getMethod() %><br/>
获取请求的资源：<%=request.getRequestURI() %><br/>
获取使用的协议：<%=request.getProtocol() %><br/>
请求服务器的ip：<%=request.getServerName() %><br/>
客户机的主机名：<%=request.getRemoteHost() %><br/>
获取请求的服务器ip地址：<%=request.getRemoteAddr() %><br/>
获取请求的服务器端口：<%=request.getRemotePort() %><br/>
表单提交的值：<%=request.getParameter("username") %>

</body>

</html>