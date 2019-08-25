<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage = "pageDirectiveIsErrorPage.jsp" %>
    <% int one = 1;
    	int zero = 0;
    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageDirectiveErrorPage</title>
</head>
<body>
	<h1>DirectiveErrorPage</h1>
	<p>one과 zero의 사칙연산</p>
	one + zero = <%= one+zero %>
	one - zero = <%= one-zero %>
	one x zero = <%= one*zero %>
	
</body>
</html>