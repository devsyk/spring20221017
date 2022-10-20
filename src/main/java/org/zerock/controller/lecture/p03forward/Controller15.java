package org.zerock.controller.lecture.p03forward;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex15")
public class Controller15 {
	
	// /ex15/sub01 (view 이름)
	@RequestMapping("sub01")
	public void method1() {
		System.out.println("메소드 1번 일함");
		// /WEB-INF/views/ex15/sub01.jsp 포워드
	}
	
	@RequestMapping("sub02")
	public void method2() {
		System.out.println("메소드 2번 일함");
		// /WEB-INF/views/ex15/sub02.jsp 포워드
	}
	
	@RequestMapping("sub03")
	public String method3() {
		return null; // void처럼 default view name을 사용해서 view로 포워드
		// /WEB-INF/views/ex15/sub03.jsp 포워드
	}
	
	@RequestMapping("sub04")
	public String method4() {
		return null;
		// /WEB-INF/views/ex15/sub04.jsp 포워드
	}
	
	// sub05 요청
	// name request param 있으면 /WEB-INF/views/ex15/sub051.jsp 포워드
	// 없으면 /WEB-INF/views/ex15/sub05.jsp 포워드 (요청경로)
	@RequestMapping("sub05")
	public String method5(String name) {
		if(name == null) {
			return null;
		}
		return "ex15/sub051";
	}
	
	@RequestMapping(path = "sub06", params = "address")
	public String method6() {
		return "ex15/sub061";
	}
	@RequestMapping("sub06")
	public void method7() {
		
	}
}
