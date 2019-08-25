<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<% String id = request.getParameter("id");
		String hobby = request.getParameter("hobby");%>
		
	귀하의 ID는 <%=id %>입니다.<br>
	귀하의 취미는 <%=hobby %>입니다.
</body>
</html>