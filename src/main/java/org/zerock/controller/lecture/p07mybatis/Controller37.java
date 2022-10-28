package org.zerock.controller.lecture.p07mybatis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.lecture.JavaBean18;
import org.zerock.domain.lecture.JavaBean19;
import org.zerock.mapper.lecture.Mapper11;

@Controller
@RequestMapping("ex37")
public class Controller37 {
	
	@Autowired
	private Mapper11 mapper;
	
	@GetMapping("sub01")
	public void method1(@RequestParam(name="id", defaultValue="0") int id, Model model) {
		// 1. 수정하기 전 고객 정보 얻기 
		// - id 파라미터 얻어서 고객 정보 조회
		JavaBean18 customer = mapper.getCustomerById(id);
		// 2. model attribute 추가 
		// - 모델에 고객 정보 추가
		model.addAttribute("customer", customer);
		// 3. forward
	}
	
	@PostMapping("sub01")
	public String method1(JavaBean18 customer, RedirectAttributes rttr) {
		// 1. 파라미터 수집
		
		// 2. business logic 
		// - 고객정보 수정
		int cnt = mapper.updateCustomer(customer);
		System.out.println(cnt + "개 고객 정보 수정됨");
		
		// 3. attribute 추가
		rttr.addAttribute("id", customer.getId());
		
		// 4. redirect
		return "redirect:/ex37/sub01";
	}
	
	@GetMapping("sub02")
	public void getMethod2(@RequestParam(name="id", defaultValue="0") int id, Model model) {
		JavaBean19 supplier = mapper.getSupplierById(id);
		model.addAttribute("supplier", supplier);
	}
	
	@PostMapping("sub02") 
	public String postMethod2(JavaBean19 supplier, RedirectAttributes rttr) {
		int cnt = mapper.updateSupplier(supplier);
		System.out.println(cnt + "개 공급자 정보 수정됨");
		
		rttr.addAttribute("id", supplier.getId());
		
		return "redirect:/ex37/sub02";
	}
}
