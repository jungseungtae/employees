package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.BankVO;

@Repository
public class BankDAOImpl implements BankDAO {

	@Inject
	private SqlSession sqlsession;
	
	@Override
	public List<BankVO> b_list() throws Exception {
		return sqlsession.selectList("bankMapper.b_list");
	}

}
