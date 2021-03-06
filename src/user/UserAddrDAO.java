package user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import config.MySqlSession;
import goods.GoodsVO;

public class UserAddrDAO {
	public void insert(UserAddrVO user) {
		try {
			
			SqlSession session = MySqlSession.getSession();
			int result = session.insert("User.addAddr", user);
			
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<UserAddrVO> getList(String userID){
		List<UserAddrVO> list = null;
		try {
			SqlSession session = MySqlSession.getSession();
			list = session.selectList("User.searchAll",userID);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void removeAll(String userID) {
		try {
			SqlSession session = MySqlSession.getSession();
			session.update("User.deleteAddr",userID);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
