package org.zerock.controller.lecture.p08mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.lecture.JavaBean18;
import org.zerock.service.lecture.Service01;

@Controller
@RequestMapping("ex38")
public class Controller38 {
	
	@Autowired
	private Service01 service;
	
	@RequestMapping("sub01")
	public void method1() {
		// request parameter 수집 가공
		int id = 5;
		
		// business logic
		JavaBean18 customer = service.getCustomer(id);
		System.out.println(customer);
		
		// model에 attribute 추가
		
		// forward / redirect
	}
	
	@RequestMapping("sub02")
	public void method2() {
		// request parameter 수집 가공
		int id = 5;
		
		// business logic
		service.transferMoney();
		
		// model에 attribute 추가
		
		// forward / redirect
	}
}
