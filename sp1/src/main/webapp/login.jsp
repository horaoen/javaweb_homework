<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.login {
	margin: 0 auto;
	width: 400px;
}

.form-group .title {
	width: 100px;
	display: inline-block;
	text-align: center;
}

form {
	margin-top: 350px;
}

.form-group input {
	width: 210px;
}

.form-group {
	margin: 30px auto;
}

form input.submit {
	background-color: skyblue;
	width: 90px;
	height: 32px;
	font-size: 16px;
	border: none;
	border-radius: 5%;
	-webkit-border-radius: 5%;
	-moz-border-radius: 5%;
	-ms-border-radius: 5%;
	-o-border-radius: 5%;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="login">
		<form method="post"
			action="<%=request.getContextPath()%>/LoginServlet" method="post">
			<div class="form-group">
				<label for="username" class="title">用户名</label> <input id="username"
					name="username" />
			</div>
			<div class="form-group">
				<label for="password" class="title">密码</label> <input
					type="password" id="password" name="password" />
			</div>
			<div class="form-group" style="text-align: center;">
				<input type="submit" class="submit" value="登陆">
			</div>
		</form>
	</div>
</body>
</html>