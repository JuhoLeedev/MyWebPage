package user;

import org.apache.ibatis.session.SqlSession;

import config.MySqlSession;

public class UserAddrDAO {
	public void insert(UserAddrVO user) {
		try {
			
			SqlSession session = MySqlSession.getSession();
			int result = session.insert("User.addAddr", user);
			
			session.commit();
			session.close();	//	세션닫기	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
