<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>页面访问计数器</title>
</head>
<body>
<%
    Object obj = application.getAttribute("counter");
    out.print(obj);
    if(obj==null){
    	application.setAttribute("counter",new Integer(1));
    	out.print("页面被访问了"+application.getAttribute("counter")+"<br/>");
    }else{
    	int counterValue=Integer.parseInt(obj.toString());
    	counterValue++;
    	out.print("该页面被访问了"+counterValue+"次");
    	application.setAttribute("counter", counterValue);
    }

%>
</body>
</html>