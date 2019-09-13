<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="mb" class="b23.jdbcbean2311.MemberBean"/>
<jsp:useBean id="mdb" class="b23.jdbcbean2311.MemberDBbean"/>
<% request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");	
	mb = mdb.selectMember(id); %>	
<body bgcolor="#FFFFCC">
<table width="80%" align="center" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center" valign="middle" bgcolor="#FFFFCC">
		<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
		<form name=regForm method=post action="login.jsp">	
			<tr align=center bgcolor="#996600">
				<td colspan="3"><font color="#FFFFFF"><b>
					<jsp:getProperty name="mb" property="id"/> 
				님의 회원 정보입니다.</b></font></td>
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
				<td>이름</td>
				<td><%=  mb.getName() %></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><%=  mb.getNum1() %>-<%=  mb.getNum2() %></td>
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
				<td>우편번호</td>
				<td><%=  mb.getZipcode() %></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%=  mb.getAddress() %></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%=  mb.getJob() %></td>
			</tr>
			<tr>
				<td colspan=2><center><input type=button value="뒤로 가기" onClick="history.back(-1);">&nbsp;
				<input type=submit value="로그인"></center></td>
			</tr>
		</table>
</body>
</html>