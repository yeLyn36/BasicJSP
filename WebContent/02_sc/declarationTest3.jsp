<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declarations</title>
</head>
<body>
<h2>선언문 예제 메소드 선언</h2>
	<% String name = team + " Fighting!"; %>
	<%! String team = "Korea"; %>
	출력 결과 : <%= name %>
</body>
</html>