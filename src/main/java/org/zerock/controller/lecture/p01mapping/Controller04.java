package org.zerock.controller.lecture.p01mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("ex04")
public class Controller04 {
	
	@RequestMapping("sub01")
	public void method1() {
		System.out.println("메소드01 1번~");
	}
	
	@RequestMapping(value="sub02", method=RequestMethod.GET)
	private void method2() {
		System.out.println("메소드01 2번~");
	}

	@RequestMapping(value="sub02", method=RequestMethod.POST)
	private void method3() {
		System.out.println("메소드01 3번~");
	}

	@RequestMapping(value="sub03", method={RequestMethod.GET, RequestMethod.POST})
	private void method4() {
		System.out.println("메소드01 4번~");
	}

	@RequestMapping(value="sub04", method={RequestMethod.GET, RequestMethod.POST})
	private void method5() {
		System.out.println("메소드01 5번~");
	}
}
