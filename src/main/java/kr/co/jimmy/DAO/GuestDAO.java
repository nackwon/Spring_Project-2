package kr.co.jimmy.DAO;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.jimmy.VO.GuestVO;

@Repository
public class GuestDAO {

	@Autowired
	private SqlSession sqlSession;

	public int GuestWrite(GuestVO vo) {
		return sqlSession.insert("guestbook.guestbookWrite", vo);
	}

	public List<GuestVO> GuestList() {
		return sqlSession.selectList("guestbook.guestbookList");
	}

	public int GuestDelete(HashMap<String, String> map) {
		return sqlSession.delete("guestbook.guestbookDelete",map);
	}
}
