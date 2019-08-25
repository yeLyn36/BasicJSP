<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    	import="java.util.*"  
    	buffer = "16kb"
    	autoFlush = "true"
    	isThreadSafe = "true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>pageDirective - Buffer</title>
</head>
<body>
	<% Date date = new Date(); %>
	<p> 현재의 날짜와 시간은 </p>
	<%=date.toLocaleString() %>
</body>
</html>