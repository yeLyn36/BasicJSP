<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>For 문 연습</title>
</head>
<body>
	<% 
	String strArray[] = {"Java", "JSP", "Android", "HTML5"};
	for (int i = 0; i < strArray.length; i++)
		out.println("strArray[" + i + "] : " + strArray[i] + "<br>");%>
</body>
</html>