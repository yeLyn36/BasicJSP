<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mb" class="b23.jdbcbean2311.MemberBean"/>
<jsp:setProperty name = "mb" property="id"/>	
<%	String id = request.getParameter("id");	
	String pwd = request.getParameter("pwd"); %>
<jsp:setProperty name = "mb" property="id"/>
<jsp:useBean id="mdb" class="b23.jdbcbean2311.MemberDBbean"/>
<% int result = mdb.selectId(id, pwd);
	if(result == 1){ 	
	session.setAttribute("id", id);	
	session.setAttribute("pwd", pwd);	%>
<form method=post action="retreive.jsp">
	<table align=center border=1 cellspacing="0" cellpadding="5">
		<tr>
			<td colspan=3 style="color: #996600" align="center" valign="middle">
				<b><%= id %>님 로그인되었습니다..</b>
			</td>
		</tr>
		<tr valign="top">
			<td height=50>
				<input type=submit value="회원정보조회"></td></form>
			<td><input type=button value="회원정보수정" onClick="javascript:location.href='update.jsp'"></td>
			<td>
				<form method=post action="delete.jsp">
					<input type=submit value="회 원 탈 회">
				</form>
			</td>
		</tr>
	</table>
	<input type=hidden name=id value="<jsp:getProperty name="mb" property="id"/>">

<% 	} else if (result == 2){	%>
	<center>
	존재하지 않는 아이디입니다. 회원가입을 해주세요.<p/>
	<input type=submit value="뒤로 가기" onClick="history.back(-1);">&nbsp;
	<input type=submit value="회원 가입" onClick="javascript:location.href='member.jsp'">
<% } else if (result == 3){	%>
	비밀번호가 알맞지 않습니다. 다시 로그인하여 주세요. <p/>
	<input type=submit value="뒤로 가기" onClick="history.back(-1);">
<% } %>
</center>
</body>
</html>