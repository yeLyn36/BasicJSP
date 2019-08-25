<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	String season = request.getParameter("season");
	String fruit = request.getParameter("fruit"); %>
<h1>Session Example1</h1>
	<%=id %>님이 좋아하시는 계절과 과일은<br>
	<%=season %>과 <%=fruit %>입니다.<br>
	세션 ID: <%= session.getId() %><br>
	세션 유지 시간 : <%= session.getMaxInactiveInterval() %>
	
	<% session.invalidate(); %>
</body>
</html>