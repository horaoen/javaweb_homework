<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<form action="doLogin.jsp" method="post">
 		<div>
 			<label>用户名</label>
			<input type="text" name="username" />
		</div>
		<div>
			<label>密码</label>
			<input type="password" name="password" />
		</div>
		<input type="submit" value="登录" />
	</form>				  
</body>
</html>