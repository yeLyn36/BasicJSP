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
	<% String name = request.getParameter("name");
		String number = request.getParameter("number");
		int major = Integer.parseInt(request.getParameter("major"));
		
		switch(major){
			case 1: %> <b><%= name%>은 뉴미디어디자인학과 학번은 <%= number %>입니다.</b> <% break;
			 case 2: %> <b><%= name%>은 뉴미디어솔루션학과 학번은 <%= number %>입니다.</b> <% break;
			 case 3: %> <b><%= name%>은 뉴미디어소프트웨어학과 학번은 <%= number %>입니다.</b> <% break;
		}
		%>
	
</body>
</html>