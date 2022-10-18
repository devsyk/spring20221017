package org.zerock.controller.lecture.p01mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex07")
public class Controller07 {
	
	@GetMapping("sub01")
	public void method1() {
		System.out.println("method111");
	}

	@GetMapping(value="sub01", params="name")
	public void method2() {
		System.out.println("method222 @@@!");
	}

	@GetMapping("sub02")
	public void method3() {
		System.out.println("method333");
	}
		
	@GetMapping(value="sub02", params="address")
	public void method4() {
		System.out.println("method444 @@@!");
	}
	
	@GetMapping(path = "sub03", params = "address=seoul")
	public void method5() {
		System.out.println("5번 메소드");
	}
	
	@GetMapping(path = "sub03")
	public void method6() {
		System.out.println("6번 메소드");
	}

	@GetMapping("sub04")
	public void method7() {
		System.out.println("7번 메소드");
	}

	@GetMapping(path = "sub04", params = {"name", "age"})
	public void method8() {
		System.out.println("8번 메소드");
	}
}
