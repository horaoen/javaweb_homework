<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	if(!username.equals(password)) {
    		out.println("用户名密码不相同");
    	} else {
    		out.println("用户名密码有效位小于六位");
    	}
    %>
    <%@ include file="index.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
</body>
</html>