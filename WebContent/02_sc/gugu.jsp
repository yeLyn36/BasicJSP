<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
	<% for(int i = 2; i < 10; i++)
		for(int j = 1; j < 10; j++){%>
		 <%= i%> * <%= j%> = <%= i*j %><br>
		<% }%><p>
</body>
</html>