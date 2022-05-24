<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if(username.equals(password) && (username.trim().length() >= 6)) {
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", "http://localhost:8080/561_sy2/suc.jsp?username=" + username);
	} else {
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", "http://localhost:8080/561_sy2/fail.jsp?username=" + username + "&password=" + password);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>