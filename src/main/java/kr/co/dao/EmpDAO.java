package kr.co.dao;

import java.util.List;

import kr.co.vo.Criteria;
import kr.co.vo.EmpVO;
import kr.co.vo.SearchCriteria;

public interface EmpDAO {

//	사원등록
	public void write(EmpVO empVO) throws Exception;
	
//	사원 리스트 조회
	public List<EmpVO> list(SearchCriteria scri) throws Exception;
	
//	게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	
//	사원 조회
	public EmpVO read(int emp_no) throws Exception;
	
//	수정
	public void update(EmpVO empVO) throws Exception;
	
//	삭제
	public void delete(int emp_no) throws Exception;
}
