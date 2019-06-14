package purchase;

import java.util.List;
import org.apache.ibatis.session.SqlSession;

import config.MySqlSession;

public class BuyDAO {
	public void insert(BuyVO b) {
		try {
			SqlSession session = MySqlSession.getSession();
			int result = session.insert("purchase.addBuy", b);
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<BuyDAO> search(String userID) {
		try {
			SqlSession session = MySqlSession.getSession();
			List<BuyDAO> list = session.selectList("purchase.searchBuy",userID);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void remove(int buycode) {
		try {
			SqlSession session = MySqlSession.getSession();
			session.delete("purchase.deleteBuy", buycode);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
