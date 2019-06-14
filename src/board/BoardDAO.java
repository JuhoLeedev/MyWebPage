package board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import config.MySqlSession;

public class BoardDAO {
	public void insert(BoardVO board) {
		try {
			SqlSession session = MySqlSession.getSession();
			int result = session.insert("Board.add", board);
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<BoardVO> getList(int pageNum) {
		try {
			SqlSession session = MySqlSession.getSession();
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("rownum", (pageNum-1)*20);
			List<BoardVO> list = session.selectList("Board.searchAll",map);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public BoardVO searchBoard(int bcode) {
		try {
			SqlSession session = MySqlSession.getSession();
			BoardVO board = session.selectOne("Board.search", bcode);
			return board;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void remove(int bcode) {
		try {
			SqlSession session = MySqlSession.getSession();
			session.delete("Board.delete", bcode);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void update(BoardVO board) {
		try {
			SqlSession session = MySqlSession.getSession();
			session.update("Board.update", board);
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void hitsUpdate(int bcode) {
		try {
			SqlSession session = MySqlSession.getSession();
			session.update("Board.clicked", bcode);
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int maxPage() {
		try {
			SqlSession session = MySqlSession.getSession();
			int count= session.selectOne("Board.count");
			int maxPage = count / 20;
			return maxPage+1;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}
