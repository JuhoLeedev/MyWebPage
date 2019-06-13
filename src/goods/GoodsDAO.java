package goods;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import config.MySqlSession;

public class GoodsDAO {
	public void insert(GoodsVO goods) {
		try {
			SqlSession session = MySqlSession.getSession();
			int result = session.insert("Goods.add", goods);
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<GoodsVO> listAll(){
		List<GoodsVO> list = null;
		try {
			SqlSession session = MySqlSession.getSession();
			list = session.selectList("Goods.searchAll");
			System.out.println(list.size());
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
