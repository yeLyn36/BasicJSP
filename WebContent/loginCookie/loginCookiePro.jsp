<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="javax.sql.*"
    import="b23.jdbcbean2311.MemberDBbean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
<% request.setCharacterEncoding("utf-8"); 
	String id = request.getParameter("id");	
	String pwd = request.getParameter("pwd"); 
	MemberDBbean mdb = new MemberDBbean();
	int result = mdb.selectId(id, pwd);
	String msg="";
	if(result == 1){ 	
		Cookie cookie1 = new Cookie("id", id);
		Cookie cookie2 = new Cookie("pwd", pwd);
		cookie1.setMaxAge(2*60);
		cookie2.setMaxAge(2*60);
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		response.sendRedirect("loginCookieMain.jsp");
	} else if (result == 2){	
		msg = "ID 오류입니다.";
	} else if (result == 3){
		msg = "Password 오류입니다.";
	} 
	
	if (result != 1){ %>
		<h2><%=msg %></h2>
		<input type=button value="뒤로가기" onClick="history.back()">
	<% } %>
</center>
</body>
</html>