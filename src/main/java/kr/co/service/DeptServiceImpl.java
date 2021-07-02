package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.DeptDAO;
import kr.co.vo.DeptVO;

@Service
public class DeptServiceImpl implements DeptService {

	@Inject
	private DeptDAO dao;
	
	@Override
	public List<DeptVO> d_list() throws Exception {
		return dao.d_list();
	}

}
