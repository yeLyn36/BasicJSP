<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 처리 페이지 </title>
</head>
<body>
	<%
	String message = exception.getMessage();
	String objectMessage = exception.toString();
	%>
	
	에러 메세지 : <b><%=message %></b><p/>
	에러 실체의 클래스명과 에러 메세지 : <b><%=objectMessage %></b><p/> 
</body>
</html>