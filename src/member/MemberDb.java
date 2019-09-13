package member;

import java.sql.*;

import b23.jdbcbean2311.MemberBean;

public class MemberDb {
	
	final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
	final String USER = "root";
	final String PASS = "mirim2";
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = null;
	ResultSet rs = null;

	public MemberDb() {	
		try {
		Class.forName(JDBC_DRIVER); //try문 안에, 밖에 넣어도 됨. //DB접속
		conn = DriverManager.getConnection(JDBC_URL, USER, PASS); //db 접속
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 connection 오류");
		}
	} //드라이버 연결
	
	public int selectId(String Id, String Pwd) {
		int result = 1;

		try {
			sql = "select id, pwd from member where id=?"; //SQL문
			pstmt = conn.prepareStatement(sql); //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
			
			pstmt.setString(1, Id);
			rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분
			
			if(rs.next()){
				String rPwd = rs.getString("pwd");
				if(rPwd.equals(Pwd)){
					result = 1;
	 	   		}else
	 	   			result = 3;
	     	}else
	     		result = 2;
			
	     }catch(Exception e){
	     	e.printStackTrace();
	     	System.out.println("로그인 오류");
	    }
		return result;
	}
	
	public Member selectMember(String id) {	//select문 테이블에서 데이터를 가져오는데,
		Member mb = new Member();
		sql = "select * from member where id=?"; //SQL문
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분
			
			if(rs.next()) {
				mb.setId(rs.getString("id"));
				mb.setPwd(rs.getString("pwd"));
				mb.setEmail(rs.getString("email"));
				mb.setPhone(rs.getString("phone"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("데이터 불러오기 오류");
		} //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
		return mb;
	}
}
