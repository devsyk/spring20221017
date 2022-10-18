package org.zerock.controller.lecture.p01mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller01 {
	// servlet에서 주로 했던 작업
	// *1. 요청 받고
	// 2. request param 수집
	// 3. request param 가공
	// 4. business logic
	// 5. add attribute
	// 6. forward / redirect
	
	@RequestMapping("/ex01/sub01")
	public void method01() {
		System.out.println("메소드 1번 일함");
	}
	
	@RequestMapping("/ex01/sub02")
	public void method02() {
		System.out.println("메소드 2번 일함");
	}
	
	@RequestMapping("/ex01/sub03")
	public void function03() {
		System.out.println("메소드 3번 일함");
	}
}
