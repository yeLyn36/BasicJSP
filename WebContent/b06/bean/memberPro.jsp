<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="member" class="b06.bean.MemberBean">
		<jsp:setProperty name="member" property="*"/>
	</jsp:useBean>
	<table border=1>
		<tr>
			<td colspan=3>
				<center>
					<jsp:getProperty name="member" property="name"/> 회원님이 작성하신 내용입니다. 확인해 주세요.
				</center>
			</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty name="member" property="id"/></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><jsp:getProperty name="member" property="password"/></td>
		</tr>	
		<tr>
			<td>이름</td>
			<td><jsp:getProperty name="member" property="name"/></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><jsp:getProperty name="member" property="birthday"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty name="member" property="email"/></td>
		</tr>
		<tr>
			<td colspan=3></td>
		</tr>
	</table>
</body>
</html>