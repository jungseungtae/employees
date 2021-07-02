package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.DeptVO;
@Repository
public class DeptDAOImpl implements DeptDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<DeptVO> d_list() throws Exception {
		return sqlSession.selectList("deptMapper.d_list");
	}

	
}
