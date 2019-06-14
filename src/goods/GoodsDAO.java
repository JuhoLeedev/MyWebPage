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
	
	public List<GoodsVO> getList(){
		List<GoodsVO> list = null;
		try {
			SqlSession session = MySqlSession.getSession();
			list = session.selectList("Goods.searchAll");
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public GoodsVO search(int code) {
		try {
			SqlSession session = MySqlSession.getSession();
			GoodsVO vo = session.selectOne("Goods.search", code);
			return vo;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
