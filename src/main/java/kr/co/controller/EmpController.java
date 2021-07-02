package kr.co.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.BankService;
import kr.co.service.DeptService;
import kr.co.service.EmpService;
import kr.co.vo.Criteria;
import kr.co.vo.EmpVO;
import kr.co.vo.PageMaker;
import kr.co.vo.SearchCriteria;

@Controller
@RequestMapping("/emp/*")
public class EmpController {

	private static final Logger logger = LoggerFactory.getLogger(EmpController.class); 
		
	@Inject
	EmpService service;
	
	@Inject
	DeptService dservice;
	
	@Inject
	BankService bservice;
	
	@RequestMapping(value = "/emp/writeView", method = RequestMethod.GET)
	public void writeView(Model model) throws Exception {
		logger.info("write View");
		model.addAttribute("d_list", dservice.d_list());
		model.addAttribute("b_list", bservice.b_list());
	}
	
	@RequestMapping(value = "/emp/write", method = RequestMethod.POST)
	public String write(EmpVO empVO) throws Exception {
		logger.info("write");
		service.write(empVO);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		logger.info("list");
		model.addAttribute("list", service.list(scri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("d_list", dservice.d_list());
		
		return "emp/list";
	}
	
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(EmpVO empVO, Model model) throws Exception {
		logger.info("read");
		model.addAttribute("read", service.read(empVO.getEmp_no()));
		return "emp/readView";
	}
	
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(EmpVO empVO, Model model) throws Exception {
		logger.info("update View");
		model.addAttribute("update", service.read(empVO.getEmp_no()));
		return "emp/updateView";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(EmpVO empVO) throws Exception {
		logger.info("update");
		service.update(empVO);
		return "redirect:/emp/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	
	public String delete(EmpVO empVO) throws Exception {
		logger.info("delete");
		service.delete(empVO.getEmp_no());
		return "redirect:/emp/list";
	}
}
