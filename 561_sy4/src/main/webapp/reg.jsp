<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.register {
  margin: 0 auto;
  width: 400px;
}
.form-group .title {
  width: 100px;
  display: inline-block;
  text-align: center;
}
form {
  margin-top: 150px;
}
.form-group input {
  width: 210px;
}

.form-group {
  margin: 30px auto;
}

.form-group input[type=radio] {
  width: 20px;
  margin-right: 50px;
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
	<div class="register">
      <form method="post" action="<%=request.getContextPath()%>/RegServlet" method="post">
        <div class="form-group">
          <label for="email" class="title">邮箱帐号</label>
          <input id="email" name="email"/>
        </div>
        <div class="form-group">
          <label for="realname" class="title">姓名</label>
          <input id="realname" name="realname"/>
        </div>
        <div class="form-group">
          <label for="password" class="title">密码</label>
          <input id="password" type="password" name="password"/>
        </div>
        <div class="form-group">
          <label for="confirm-password" class="title">确认密码</label>
          <input id="confirm-password" type="password" name="confirm-password"/>
        </div>
        <div class="form-group" style="text-align: center;">
          <input type="submit" class="submit" value="立即注册">
        </div>
      </form>
    </div>
</body>
</html>
