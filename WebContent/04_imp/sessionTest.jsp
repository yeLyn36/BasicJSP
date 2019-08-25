<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Example</title>
</head>
<body>
	<h1>Session Example1</h1>
	
	<form method="post" action="sessionPro1.jsp">
		아이디:<input type="text" name="id"><p>
		비밀번호:<input type="password" name="password"><p>
		<input type=submit value="로그인">
	</form>
	
	<% session.setMaxInactiveInterval(60*5); %>
</body>
</html>