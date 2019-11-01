<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="mb" class="b23.jdbcbean2311.MemberBean"/>
    <jsp:setProperty name = "mb" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check_pwd(){
		 
		var pwd = document.member.pwd.value;
		var pwd_check = document.member.pwd_check.value;
		if(!(pwd==pwd_check)){
			alert("비밀번호와 비밀번호 확인이 다릅니다. 다시 확인해주세요.")
			return false
		}
	}
</script>
</head>
<body bgcolor="#FFFFCC">
<center>
<form name=member method=post onsubmit="return check_pwd()" action="memberPro.jsp">	
	<table width=600 border=1>
		<tr>
			<td colspan=2>회원가입</td>
		</tr>
		<tr>
			<td width=20%>아이디</td>
			<td><input type=text name=id></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type=password name=pwd></td>
		</tr>
		<tr>
			<td>패스워드 확인</td>
			<td><input type=password name=pwd_check></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type=text name=name></td>
		</tr>
		<tr>
			<td>주민등록번호</td>
			<td><input type=text name=num1>ex)830815-<input type=text name=num2>ex)1234567</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type=text name=email></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type=text name=phone></td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td><input type=text name=zipcode></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type=text name=address></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><input type=text name=job></td>
		</tr>
		<tr>
			<td colspan=2><input type=submit value="회원가입">&nbsp;<input type=reset value="다시쓰기"></td>
		</tr>
	</table>
	</form>
	</center>
</body>
</html>