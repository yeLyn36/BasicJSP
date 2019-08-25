<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
	<% String id = (String)session.getAttribute("id");
		String pwd = request.getParameter("pwd");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPwd = "mirim2"; //각 주소, 아이디, 비밀번호를 객체로 설정해놓는 것이 좋은 소스이다.
		
		Class.forName("org.gjt.mm.mysql.Driver"); //try문 안에, 밖에 넣어도 됨. //DB접속
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd); //db 접속
		String sql = "select id, pwd from tblregister where id=?"; //SQL문
		pstmt = conn.prepareStatement(sql); //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
		
		pstmt.setString(1, id);
		rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분
		
		if(rs.next()){
			String rPwd = rs.getString("pwd");
			if(rPwd.equals(pwd)){
				sql = "delete from tblregister where id = ? and pwd=?";
	    		   pstmt = conn.prepareStatement(sql);
	    		   pstmt.setString(1, id);
	    		   pstmt.setString(2, pwd);
	    		   pstmt.executeUpdate();
	    	%>
	    	     회원 탈퇴 완료했습니다.
	    	<%
	    	   }else
	    		   out.println("회원탈퇴 실패");
	        }else
	        	out.println("회원탈퇴 실패");
	        }catch(Exception e){
	        	e.printStackTrace();
	        }finally{
	        	if(pstmt != null)
	        		try{ pstmt.close();
	        		}catch(SQLException sqle){}
	        	if(conn != null)
	        		try{ pstmt.close();
	        		}catch(SQLException sqle){}
	        }
	    	%> 
</body>
</html>