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
	<%
	String pageName = request.getParameter("pageName");
	pageName += ".jsp";
	String name = request.getParameter("name");
	%>
	포함하는 페이지 includeTest.jsp 입니다.
	<hr>
	<jsp:include page="<%=pageName %>" flush="false"/>
		<jsp:param name="name" value="<%= name %>" />
	</jsp:include>
	includeTest.jsp의 나머지 내용입니다.
</body>
</html>