<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	Date dateNow = new Date();
	int hour = dateNow.getHours();
	if(hour >= 6 && hour <= 12) out.print("上午好!");
	else if(hour >= 13 && hour <= 18) out.print("下午好!");
	else out.print("晚上好!");
%>
</body>
</html>