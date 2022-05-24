<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<style type="text/css">

.userList {
	margin: 0 auto;
	width: 400px;
	margin-top: 100px;
}

.userList input {
	margin: 0 auto;
	width: 100px;
	display: block;
}

.userList table {
	margin: 0 auto;
	width: 400px;
	margin-top: 30px;
}

th, td {
	text-align: center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="userList">
		<form action="ListServlet" method="get" class="form-group">
			<input type="submit" value="查询" />
		</form>
		<table>
			<tr>
				<th>邮箱</th>
				<th>姓名</th>
			</tr>
			<c:forEach items="${userList}" var="user">
				<tr>
					<td><b>${user.getEmail()}</b></td>
					<td>${user.getUsername()}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>