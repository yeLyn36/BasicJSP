<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageDirectiveIsErrorPage</title>
</head>
<body>
	<h1>ErrorPage</h1>
	<p>다음과 같은 예외가 발생하였습니다.</p>
	<%= exception.getMessage() %>
</body>
</html>