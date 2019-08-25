package jdbc07;
import java.sql.*;

public class DriverTest {
	public static void main(String[] args) {
		Connection con;
		try {
			Class.forName("org.gjt.mm.mysql.Driver").newInstance(); //jdbc 드라이버 객체 생성, 드라이버 로드
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "mirim2");
			//연결시켜줌
			//Class, DriverManager : static 클래스
			System.out.println("Sucess");
		} catch (SQLException ex) {
			System.out.println("SQLException : " + ex);
		} catch (Exception e) {
			System.out.println("Exeption : " + e);
		}
	}
}
