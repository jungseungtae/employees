package kr.co.dao;

import java.util.List;

import kr.co.vo.BankVO;

public interface BankDAO {
	
	public List<BankVO> b_list() throws Exception;

}
