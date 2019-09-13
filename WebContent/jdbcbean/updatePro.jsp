<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="mb" class="b23.jdbcbean2311.MemberBean"/>
<jsp:setProperty name = "mb" property="id"/>
<jsp:setProperty name = "mb" property="name"/>	
<jsp:setProperty name = "mb" property="num1"/>	
<jsp:setProperty name = "mb" property="num2"/>	
<jsp:setProperty name = "mb" property="email"/>	
<jsp:setProperty name = "mb" property="phone"/>	
<jsp:setProperty name = "mb" property="zipcode"/>	
<jsp:setProperty name = "mb" property="address"/>	
<jsp:setProperty name = "mb" property="job"/>	
<jsp:useBean id="mdb" class="b23.jdbcbean2311.MemberDBbean"/>
<%	mdb.updateMember(mb); 	%>			
<body bgcolor="#FFFFCC">
<table width="80%" align="center" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center" valign="middle" bgcolor="#FFFFCC">
		<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
		<form name=regForm method=post action="loginPro.jsp">	
			<tr align=center bgcolor="#996600">
				<td colspan="3"><font color="#FFFFFF"><b>
					<jsp:getProperty name="mb" property="id"/>
				회원님의 정보가 수정되었습니다.</b></font></td>
			</tr>
			<tr>
				<td width=20%>구분</td>
				<td>수정자료</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><jsp:getProperty name="mb" property="email"/></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><jsp:getProperty name="mb" property="phone"/></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><jsp:getProperty name="mb" property="zipcode"/></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><jsp:getProperty name="mb" property="address"/></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><jsp:getProperty name="mb" property="job"/></td>
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