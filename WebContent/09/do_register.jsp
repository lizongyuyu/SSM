<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String userName=request.getParameter("userName");
    String skills="";
    String[] skillArr = request.getParameterValues("skills");
    if(skillArr!=null&&skillArr.length>0){
    	for(String skill:skillArr){
    		skills = skills+skill+" ";//显示的是技能字符串
    	}
    }

request.setAttribute("userName",userName);//在web之间共享信息
request.setAttribute("skills",skills);
%>
<jsp:forward page="welcome.jsp"></jsp:forward>