<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ifMultiTestPro</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<% String name = request.getParameter("name");
		String local = request.getParameter("local");
		String tel = request.getParameter("tel");
		String localStr = "";
		
		if(local.equals("서울")){
			localStr = "02"; }
		else if(local.equals("경기")){
			localStr = "031"; }
		else if(local.equals("강원")){
			localStr = "033"; }
		
		out.println("<b>" + name + "</b>님의 전화번호는 " + localStr + " - " + tel + "입니다.");
			%>
		<!-- 두가지 파일을 이용하면 사용자 입력을 받아 사용한다는 장점이 있음, 한가지 파일을 이용하면 사용자의 입력이 없읍 -->
</body>
</html>