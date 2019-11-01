<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="dbpool.MemberBean"
    import = "dbpool.MemberDBbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 확인</title>
</head>
<%	request.setCharacterEncoding("utf-8"); 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String job = request.getParameter("job");
	MemberBean mb = new MemberBean();
	MemberDBbean mdb = new MemberDBbean();
	mb.setId(id);
	mb.setPwd(pwd);
	mb.setName(name);
	mb.setNum1(num1);
	mb.setNum2(num2);
	mb.setEmail(email);
	mb.setPhone(phone);
	mb.setZipcode(zipcode);
	mb.setJob(job);
	mdb.insert(mb); %>			
<body bgcolor="#FFFFCC">
<table width="80%" align="center" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center" valign="middle" bgcolor="#FFFFCC">
		<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
		<form name=regForm method=post action="login.jsp">	
			<tr align=center bgcolor="#996600">
				<td colspan="3"><font color="#FFFFFF"><b>
					<%= mb.getId() %>
				회원님이 작성하신 내용입니다. 확인해주세요</b></font></td>
			</tr>
			<tr>
				<td width=20%>아이디</td>
				<td><%= mb.getId() %></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><%= mb.getPwd() %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%= mb.getName() %></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><%= mb.getNum1() %>-<%= mb.getNum2() %></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%= mb.getEmail() %></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><%= mb.getPhone() %></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><%= mb.getZipcode() %></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%= mb.getAddress() %></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%= mb.getJob() %></td>
			</tr>
			<tr>
				<td colspan=2><center><input type=submit value="로그인"></center></td>
			</tr>
		</table>
		<% session.setAttribute("id", mb.getId()); %>
		
	</form>
</table>

</body>
</html>