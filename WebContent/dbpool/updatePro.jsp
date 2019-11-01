<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" 
    import = "dbpool.MemberBean"
    import = "dbpool.MemberDBbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<% 	
		request.setCharacterEncoding("utf-8");	
		MemberBean mb = new MemberBean();
		MemberDBbean mdb = new MemberDBbean();
		mb.setId(request.getParameter("id"));
		mb.setName(request.getParameter("name"));
		mb.setNum1(request.getParameter("num1"));
		mb.setNum2(request.getParameter("num2"));
		mb.setEmail(request.getParameter("email"));
		mb.setPhone(request.getParameter("phone"));
		mb.setZipcode(request.getParameter("zipcode"));
		mb.setJob(request.getParameter("job"));
		mdb.updateMember(mb); 	%>			
<body bgcolor="#FFFFCC">
<table width="80%" align="center" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center" valign="middle" bgcolor="#FFFFCC">
		<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
		<form name=regForm method=post action="loginPro.jsp">	
			<tr align=center bgcolor="#996600">
				<td colspan="3"><font color="#FFFFFF"><b>
					<%= mb.getId()%>
				회원님의 정보가 수정되었습니다.</b></font></td>
			</tr>
			<tr>
				<td width=20%>구분</td>
				<td>수정자료</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%= mb.getEmail()%></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><%= mb.getPhone()%></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><%= mb.getZipcode()%></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%= mb.getAddress()%></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%= mb.getJob()%></td>
			</tr>
			<tr>
				<td colspan=2><center><input type=button value="뒤로 가기" onclick="history.back(-1);">&nbsp;
				<input type=button value="로그인" onclick="javascript:location.href='login.jsp'"></td>
			</tr>
		</table>
	</form>
</table>
</body>
</html>