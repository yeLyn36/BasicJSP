<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Session 예제</h1>

	<form method="post" action="sessionPro2.jsp">
	<% request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");%>
	1. 가장 좋아하는 계절은 ? <br>
		<input type=radio name=season value="봄">봄&nbsp;
		<input type=radio name=season value="여름">여름&nbsp;
		<input type=radio name=season value="가을">가을&nbsp;
		<input type=radio name=season value="겨울">겨울&nbsp;<p>
	2. 가장 좋아하는 과일은 ? <br>
		<input type=radio name=fruit value="수박">수박&nbsp;
		<input type=radio name=fruit value="멜론">멜론&nbsp;
		<input type=radio name=fruit value="사과">사과&nbsp;
		<input type=radio name=fruit value="오렌지">오렌지&nbsp;<p>
	<input type=submit value="결과보기">
	</form>
	<% session.setMaxInactiveInterval(60*5);
		session.setAttribute("id", id); %>
</body>
</html>