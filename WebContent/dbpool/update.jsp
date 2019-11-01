<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" 
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
		String id = (String)session.getAttribute("id");	%>
<body bgcolor="#FFFFCC">
<%	mb = mdb.selectMember(id);	%>
	<center>
	<div align=center>
	<br/><br/>
	<form method=post action="updatePro.jsp">
		<table width=600 border=1>
			<tr>
				<td colspan=3><b>회원 정보 수정</td>
			</tr>
			<tr>
				<td width=20%>아이디</td>
				<td><input type=text name=id value="<%= mb.getId()%>" readonly></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type=text name=name value="<%= mb.getName()%>" readonly></td>
			</tr>
			<tr>
				<td>주민번호</td>
				<td><input type=text name=num1 value="<%= mb.getNum1()%>" readonly> - <input type=text name=num2 value="<%= mb.getNum2()%>" readonly></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type=text name=email value="<%= mb.getEmail()%>"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type=text name=phone value="<%= mb.getPhone()%>"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type=text name=zipcode value="<%= mb.getZipcode()%>"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type=text name=address value="<%= mb.getAddress()%>"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><input type=text name=job value="<%= mb.getJob()%>"></td>
			</tr>
			<tr>
				<td colspan=3><center><input type=submit value="수정하기">&nbsp;<input type="button" value="뒤로가기" onClick="history.back();"></center></td>
			</tr>
		</table>
	</form>
	</div>
	</center>

</body>
</html>