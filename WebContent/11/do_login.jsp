<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
out.println("do_login界面");
    String userName=request.getParameter("userName");
    String password=request.getParameter("password");
    out.println(userName);
    if(userName!=null&&password!=null){
    	session.setAttribute("userName", userName);
    	out.println("do_login界面");
    	response.setHeader("refresh","2;URL=welcome.jsp");
    }

%>