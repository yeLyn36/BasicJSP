<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%request.setCharacterEncoding("utf-8"); %>
	
	<% String id = (String)session.getAttribute("id");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String zipcode = request.getParameter("zipcode");
		String address = request.getParameter("address");
		String job = request.getParameter("job");
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	String str="";
	boolean flag_s;
	
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPwd = "mirim2"; //각 주소, 아이디, 비밀번호를 객체로 설정해놓는 것이 좋은 소스이다.
		
		Class.forName("org.gjt.mm.mysql.Driver"); //try문 안에, 밖에 넣어도 됨. //DB접속
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd); //db 접속
	
		String sql = "update tblregister set email=?, phone=?, zipcode=?, address=?, job=?  where id = ?";
   		    pstmt = conn.prepareStatement(sql);
   		    pstmt.setString(1, email);
   			pstmt.setString(2, phone);
   			pstmt.setString(3, zipcode);
   			pstmt.setString(4, address);
   			pstmt.setString(5, job);
   		    pstmt.setString(6, id);
   		    pstmt.executeUpdate();
  	
   		    str = id + " 수정 완료입니다.";
   		    flag_s = true;
	        }catch(Exception e){
	        	e.printStackTrace();
	        	str = "수정 실패";
	        	flag_s = false;
	        }finally{
	        	if(pstmt != null)
	        		try{ pstmt.close();
	        		}catch(SQLException sqle){}
	        	if(conn != null)
	        		try{ pstmt.close();
	        		}catch(SQLException sqle){}
	        }
	    	%> 
	    	<%= str %>
	    	<% if (flag_s){ %>
		<form method="post" action="update_2311.jsp">
			<input type=submit value="회원정보 조회">
		</form>
		<%} %>
</body>
</html>