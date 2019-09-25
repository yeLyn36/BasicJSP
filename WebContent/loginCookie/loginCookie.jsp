<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(){
		
		var id = document.login.id.value;
		var pwd = document.login.pwd.value;
		if(id=="") { 
			alert("아이디를 입력해주세요")
			return false
		}
		else if(pwd=="") { 
			alert("비밀번호를 입력해주세요")
			return false
		}
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<center>
	<b>로그인</b><p/>
	<form name=login method=post onsubmit="return check()" action="loginCookiePro.jsp">
		<table border=0 width=250>
			<tr>
				<td width="33%">아이디</td>
				<td><input type=text name=id></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type=password name=pwd></td>
			</tr>
			<tr>
				<td colspan=2>
					<center>
						<input type=submit value="로그인"></form>&nbsp;
						<input type=button value="회원가입" onClick="javascript:location.href='member.jsp'">
					</center>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>