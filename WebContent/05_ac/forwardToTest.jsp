<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<% String id = request.getParameter("id");
		String hobby = request.getParameter("hobby");%>
	
	포워딩 되는 페이지로 forwardToTest.jsp 입니다.<p/>
	ID는 <%=id %>이고, 취미는 <%=hobby %>입니다.
</body>
</html>