<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">

<% String id = (String)session.getAttribute("id");
	
		String pwd = "",
		name = "",
		num1 = "",
		num2 = "",
		email = "",
		phone = "", 
		zipcode = "",
		address = "",
		job = "";

		Class.forName("org.gjt.mm.mysql.Driver").newInstance();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "mirim2");
			String sql = "select * from tblregister where id=?"; //SQL문
			pstmt = conn.prepareStatement(sql); //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분		
			
			if(rs.next()){
				pwd = rs.getString("pwd");
				name = rs.getString("name");
				num1 = rs.getString("num1");
				num2 = rs.getString("num2");
				email = rs.getString("email");
				phone = rs.getString("phone");
				zipcode = rs.getString("zipcode");
				address = rs.getString("address");
				job = rs.getString("job");	
			}
%>
<form method=post action="deletePro1_2311.jsp">	
		<table width=600 border=1>
			<tr>
				<td width=20%>id</td>
				<td><%= id %></td>
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
				<td><%= email %></td>
			</tr>
			<tr>
				<td>phone</td>
				<td><%= phone %></td>
			</tr>
			<tr>
				<td>zipcode</td>
				<td><%= zipcode %></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%= address %></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%= job %></td>
			</tr>
			<tr>
				<center><td colspan=2><input type=submit value="회원 탈퇴"></td></center>
			</tr>
		</table>
		
	</form>
	</center>

<%			
		} catch (SQLException sqlException) {
			System.out.println("sql exception");
		} catch (Exception e) {
			System.out.println("exception");
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch(SQLException ex) {
				}
			}
				%>

</body>
</html>