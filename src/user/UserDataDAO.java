package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import config.MySqlSession;

import org.apache.ibatis.session.SqlSession;

public class UserDataDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public UserDataDAO() {
		try {
			String dbURL = "jdbc:mariadb://localhost:3306/bootsystemDB";
			String dbID = "root";
			String dbPassword = "1234";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPW FROM user_data WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword))
					return 1; // 로그인 성공
				else
					return 0;
			}
			return -1; // 아이디가 없음;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
	
	// 1이면 중복, 0이면 중복 아님.
	public int idDuplicate(String userID) {		
		SqlSession session = MySqlSession.getSession();
		int result = (Integer)session.selectOne("UserData.duplicate",userID);
		if (result >= 1)
			return 1;  // 중복
		else
			return 0;  // 중복 아님
	}
}
