<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>whileTest</title>
</head>
<body>
	<% int i= 0;
	while(i < 10){ // 0~9까지의 정수 출력
		out.println("출력되는 값 " + i + "<br>");
		i++;
	}%>
</body>
</html>