<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int num = 1; %>
	<%!public int call(){
		return num++;
		}%>
	이 페이지 방문 횟수는 <%=call()%>번 입니다.
</body>
</html>