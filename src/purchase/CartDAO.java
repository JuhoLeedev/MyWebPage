package purchase;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import config.MySqlSession;

public class CartDAO {
	public void insert(CartVO c) {
		try {
			SqlSession session = MySqlSession.getSession();
			int result = session.insert("purchase.addCart", c);
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<CartVO> search(String userID) {
		try {
			SqlSession session = MySqlSession.getSession();
			List<CartVO> list = session.selectList("purchase.searchCart",userID);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void remove(int cartcode) {
		try {
			SqlSession session = MySqlSession.getSession();
			session.delete("purchase.deleteBuy", cartcode);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
