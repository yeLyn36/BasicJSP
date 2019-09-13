<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 조회</title>
</head>
<jsp:useBean id="mb" class="member.Member"/>
<jsp:useBean id="mdb" class="member.MemberDb"/>
<% request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");	
	mb = mdb.selectMember(id); %>
<body bgcolor="#FFFFCC">

	<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
		<form method=post action="login.jsp">	
			<tr align=center bgcolor="#996600">
				<td colspan="3"><font color="#FFFFFF"><b>
					<%=  mb.getId() %>님의 회원 정보입니다.</b></font></td>
			</tr>
			<tr>
				<td width=20%>아이디</td>
				<td><%=  mb.getId() %></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><%=  mb.getPwd() %></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%=  mb.getEmail() %></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><%=  mb.getPhone() %></td>
			</tr>
			<tr>
				<td colspan=2>
					<center>
						<input type=submit value="로그인">
					</center>
				</td>
			</tr>
		</form>
	</table>
</body>
</html>