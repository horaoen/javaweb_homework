<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border=2 width="400" bordercolor="gray">
	<tr>
		<th>用户Id</th>
		<th>密码</th>
		<th>真实名</th>
		<th>邮箱</th>
		<th>是否管理员</th>
	</tr>
	<%
		String url = "jdbc:mysql://42.192.5.249:3306/test";
		String username = "root";
		String password = "123456";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, username, password);
			String sql = "select * from user";
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int count = rsmd.getColumnCount();
		
			while(rs.next())
			{
				String userId = rs.getString("userid");
				String pwd = rs.getString("password");
				String realName = rs.getString("realName");
				String email = rs.getString("email");
				String admin = rs.getString("admin");
				String line = String.format("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>", userId, pwd, realName, email, admin.equals("1") ? "是" : "否");
				out.println(line);
			}
			rs.close();
			statement.close();
			conn.close();
		
		} catch(Exception e) {
			e.printStackTrace();
		}
%>
</table>
</body>
</html>