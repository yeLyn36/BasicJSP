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
	<b>로그인</b>
	<form name=login method=post onsubmit="return check()" action="loginPro_2311.jsp">
		아이디 <input type=text name=id><br>
		비밀번호 <input type=text name=pwd><br>
		<input type=submit value="로그인"></form>&nbsp;<input type=submit value="회원가입" onClick="javascript:location.href='member_2311.jsp'">
	</center>
	
</body>
</html>