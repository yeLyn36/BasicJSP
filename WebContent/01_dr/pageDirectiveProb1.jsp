<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    info="미림여자정보과학고등학교 원예린"
    import="java.sql.Timestamp"
    import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>pageDirectiveProb1</title>
</head>
<body>
	<h5><%=getServletInfo() %></h5>
	<% 
		Timestamp today = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = format.format(today); %>
		오늘은 <%=strDate %> 입니다.
</body>
</html>