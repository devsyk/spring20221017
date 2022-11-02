package org.zerock.controller.lecture.p09fetch;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex41")
public class Controller41 {
	
	@RequestMapping("sub")
	public void method0() {
		
	}
	
	@GetMapping("sub01")
	public void method1() {}

	@GetMapping("sub02")
	public void method2() {}

	@GetMapping("sub03")
	public void method3() {}
	
	@GetMapping("sub04")
	public void method4() {}
	
}
