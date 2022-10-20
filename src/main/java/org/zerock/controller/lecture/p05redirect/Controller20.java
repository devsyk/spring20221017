package org.zerock.controller.lecture.p05redirect;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("ex20")
public class Controller20 {
	// redirect때 데이터 넘겨주는 방법
	
	// 1. 쿼리스트링으로 붙여서 넘겨주기
	@RequestMapping("sub01")
	public String method1() {
		return "redirect:/ex20/sub02?name=donald";
	}
	@RequestMapping("sub02")
	//public String method2(@RequestParam("name") String name) {
	public String method2(String name) { //객체명 같을 경우 생략 가능
		System.out.println("리다이렉트 잘됨 sub02");
		System.out.println(name);
		return null;
	}
	
	@RequestMapping("sub03")
	public String method3() {
		return "redirect:/ex20/sub04?address=seoul&age=30";
	}
	@RequestMapping("sub04")
	public String method4(String address, int age) {
		System.out.println(address);
		System.out.println(age);
		return null;
	}
}
