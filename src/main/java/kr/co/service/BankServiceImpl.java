package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.BankDAO;
import kr.co.vo.BankVO;

@Service
public class BankServiceImpl implements BankService {

	@Inject
	BankDAO dao;
	
	@Override
	public List<BankVO> b_list() throws Exception {
		return dao.b_list();
	}

}
