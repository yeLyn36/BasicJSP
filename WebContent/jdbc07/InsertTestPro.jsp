<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>	
		
	<%	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String job = request.getParameter("job");
	
	
	System.out.println("id : " + id);
	System.out.println("pwd : " + pwd);
	System.out.println("name : " + name);
	System.out.println("num1 : " + num1);
	System.out.println("num2 : " + num2);
	System.out.println("email : " + email);
	System.out.println("phone : " + phone);
	System.out.println("zipcode : " + zipcode);
	System.out.println("address : " + address);
	System.out.println("job : " + job);
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String str="";
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPwd = "mirim2"; //각 주소, 아이디, 비밀번호를 객체로 설정해놓는 것이 좋은 소스이다.
		
		Class.forName("org.gjt.mm.mysql.Driver"); //try문 안에, 밖에 넣어도 됨. //DB접속
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd); //db 접속
		String sql = "insert into tblRegister(id, pwd, name, num1, num2) values (?, ?, ?, ?, ?)"; //SQL문
		pstmt = conn.prepareStatement(sql); //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
		pstmt.setString(1, id); 
		pstmt.setString(2, pwd);
		pstmt.setString(3, name); //쿼리 실행 form 생성 완료
		pstmt.setString(4, num1);
		pstmt.setString(5, num2);
		pstmt.executeUpdate(); //쿼리문을 실행시키는 부분
		
		str = "tblRegister 테이블에 새로운 레코드를 추가했습니다.";
	}catch(Exception e){
		e.printStackTrace();
		str = "tblRegister 테이블에 새로운 레코드 추가에 실패했습니다.";
	}finally{
		if(pstmt != null){
			try{
				pstmt.close();
			} catch(SQLException sqle){}
		}
		if(conn != null){
			try{
				pstmt.close();
			} catch(SQLException sqle){}
		}
	}
					%>

	<%= str %>
	<% if(str.equals("tblRegister 테이블에 새로운 레코드를 추가했습니다.")){ %>
	<form method="post" action=useJDBC.jsp>
		<input type=submit value="데이터 조회">
	</form>
	<%} %>
</body>
</html>