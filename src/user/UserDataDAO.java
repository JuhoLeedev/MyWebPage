package user;

import config.MySqlSession;

import org.apache.ibatis.session.SqlSession;

public class UserDataDAO {

	// 1 로그인 성공, 0 로그인 실패, 2 관리자 계정.
	public int login(String userID, String userPassword) {
		try {
			SqlSession session = MySqlSession.getSession();
			UserDataVO user = session.selectOne("User.search", userID);

			if (user != null && user.getUserPassword().equals(userPassword))
				if (user.getAdmin() == '1')
					return 2; // 관리자 계정
				else
					return 1; // 로그인 성공
			else
				return 0; // 로그인 실패

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}

	// 1이면 중복, 0이면 중복 아님.
	public int idDuplicate(String userID) {
		try {
			SqlSession session = MySqlSession.getSession();
			System.out.println(userID);
			if(session ==null) {
				System.out.println("세션이 널이다");
			}
			int result = (Integer) session.selectOne("User.duplicate", userID);
			System.out.println("isDuplicate = " + result);
			if (result >= 1)
				return 1; // 중복
			else
				return 0; // 중복 아님
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}

	public void insert(UserDataVO user) {
		try {
			SqlSession session = MySqlSession.getSession();
			
			System.out.println(user.toString());
			
			int result = session.insert("User.addData", user);
			session.commit();
			//session.close();	//	세션닫기	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
