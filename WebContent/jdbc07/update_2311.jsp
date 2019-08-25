<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String id = (String)session.getAttribute("id");
		String pwd = (String)session.getAttribute("pwd");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String str="";
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dbPwd = "mirim2"; //각 주소, 아이디, 비밀번호를 객체로 설정해놓는 것이 좋은 소스이다.
			
			Class.forName("org.gjt.mm.mysql.Driver"); //try문 안에, 밖에 넣어도 됨. //DB접속
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd); //db 접속
			String sql = "select id, name, num1, num2 from tblregister where id=?"; //SQL문
			pstmt = conn.prepareStatement(sql); //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분
			
			if(rs.next()){
				String rId = rs.getString("id");
				String name = rs.getString("name");
				String num1 = rs.getString("num1");
				String num2 = rs.getString("num2");
			
			%>
	<center>
	<form method=post action="updatePro.jsp">	
		<table width=600 border=1>
			<tr>
				<td width=20%>id</td>
				<td><%= rId %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%= name %></td>
			</tr>
			<tr>
				<td>주민번호</td>
				<td><%= num1 %> - <%= num2 %></td>
			</tr>
			<tr>
				<td>email</td>
				<td><input type=text name=email></td>
			</tr>
			<tr>
				<td>phone</td>
				<td><input type=text name=phone></td>
			</tr>
			<tr>
				<td>zipcode</td>
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
		</table>
		<input type=submit value="수정"> <input type=reset value="다시 쓰기">
	</form>
	</center>
	<%			}
	        }catch(Exception e){
	        	e.printStackTrace();
	        }finally{
	        	if(pstmt != null){
	        		try{ pstmt.close();
	        		}catch(SQLException sqle){}
	        	}
	        	if(conn != null){
	        		try{ pstmt.close();
	        		}catch(SQLException sqle){}
	       		}
	        }
	    	%> 
</body>
</html>