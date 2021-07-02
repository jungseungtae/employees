package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.EmpDAO;
import kr.co.vo.Criteria;
import kr.co.vo.EmpVO;
import kr.co.vo.SearchCriteria;

@Service
public class EmpServiceImpl implements EmpService {

	@Inject
	private EmpDAO dao;
	
	@Override
	public void write(EmpVO empVO) throws Exception {
		dao.write(empVO);
	}

	@Override
	public EmpVO read(int emp_no) throws Exception {
		return dao.read(emp_no);
	}

	@Override
	public void update(EmpVO empVO) throws Exception {
		dao.update(empVO);
	}

	@Override
	public void delete(int emp_no) throws Exception {
		dao.delete(emp_no);
	}

	@Override
	public List<EmpVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

}
