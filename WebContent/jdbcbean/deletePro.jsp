<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 완료</title>
</head>
<jsp:useBean id="mdb" class="b23.jdbcbean2311.MemberDBbean"/>
<% 	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mb" class="b23.jdbcbean2311.MemberBean"/>
<jsp:setProperty name = "mb" property="id"/>
<%	String id = (String)session.getAttribute("id"); 
	String pwd = request.getParameter("pwd");	
	String str = "";
	if (mdb.selectId(id, pwd) == 1){
		str = mdb.deleteMember(id, pwd);
	} else { str = "회원 탈퇴 실패"; }	%>
<body bgcolor="#FFFFCC">
<center>
	<form method=post action="login.jsp">
		<font size=20 color="#996600"><b><%= str %></b></font><p/>
		<input type=submit value="로그인">
	</form>
</center>
</body>
</html>