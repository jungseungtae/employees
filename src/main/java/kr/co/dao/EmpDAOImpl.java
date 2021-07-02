package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.stereotype.Repository;

import kr.co.vo.Criteria;
import kr.co.vo.EmpVO;
import kr.co.vo.SearchCriteria;
@Repository
public class EmpDAOImpl implements EmpDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void write(EmpVO empVO) throws Exception {
		sqlSession.insert("empMapper.insert", empVO);
	}

	@Override
	public List<EmpVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("empMapper.listPage", scri);
	}
	
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("empMapper.listCount", scri);
	}

	@Override
	public EmpVO read(int emp_no) throws Exception {
		return sqlSession.selectOne("empMapper.read", emp_no);
	}
	
	@Override
	public void update(EmpVO empVO) throws Exception {
		sqlSession.update("empMapper.update", empVO);
	}
	
	@Override
	public void delete(int emp_no) throws Exception {
		sqlSession.delete("empMapper.delete", emp_no);
	}
	
}
