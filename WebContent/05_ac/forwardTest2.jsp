<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String id = "lyn";
		String hobby = "노래듣기"; %>	
			
	<jsp:forward page="forwardToTest2.jsp">
		<jsp:param name="id" value="<%=id %>"/>
		<jsp:param name="hobby" value="<%=hobby %>"/>
	</jsp:forward>
</body>
</html>