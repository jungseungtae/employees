package kr.co.dao;

import java.util.List;

import kr.co.vo.DeptVO;

public interface DeptDAO {

	public List<DeptVO> d_list() throws Exception;
}
