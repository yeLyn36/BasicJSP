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
		String id = request.getParameter("id");	
		mb.setId(id);
	%>
<body bgcolor="#FFFFCC">
	<center>
	<b>비밀번호 확인</b><p/>
	<form name=login method=post action="deletePro.jsp">
		<table border=0 width=280>
			<tr>
				<td>비밀번호 입력</td>
				<td><input type=text name=pwd></td>
			</tr>
			<tr>
				<td colspan=2 align=right>
						<input type=submit value="회원탈퇴">
				</td>
			</tr>
		</table>
		<input type=hidden name=id value="<jsp:getProperty name="mb" property="id"/>">
	</form>
	</center>
</body>
</html>