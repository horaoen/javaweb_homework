<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="loginUser" class="com.horaoen.User" scope="page"></jsp:useBean>
    <jsp:useBean id="userDao" class="com.horaoen.UserDao"></jsp:useBean>
    <jsp:setProperty property="*" name="loginUser"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <%
        if(userDao.userLogin(loginUser)){
            session.setAttribute("username", loginUser.getUsername());
            request.getRequestDispatcher("suc.jsp").forward(request, response);
        }else{
            response.sendRedirect("fail.jsp");
        }
    %>
</body>
</html>