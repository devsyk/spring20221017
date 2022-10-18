package org.zerock.controller.lecture.p02param;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("ex12")
public class Controller12 {
	
	// /ex12/sub01?city=soeul&city=ny&city=tokyo
	@GetMapping("sub01")
	public void method1(@RequestParam("city") String city) {
		//,로 구분된 값
		System.out.println(city); //soeul,ny,tokyo
	}

	@GetMapping("sub02")
	public void method2(@RequestParam("city") String[] city) {
		//배열
		System.out.println(city.length);
		System.out.println(Arrays.toString(city)); //[soeul, ny, tokyo]
	}
	
	@GetMapping("sub03")
	public void method3(@RequestParam("city") List<String> city) {
		//java.util.List
		System.out.println(city.size());
		System.out.println(city); //[soeul, ny, tokyo]
	}
	
	
	// 위 3개의 @RequestParam value attribute 생략 가능
	
	// /ex12/sub04
	@RequestMapping("sub04")
	public void method4(String name, String address, int age, String email, String password) {
		System.out.println("method4 일함");
		System.out.println(name + ", " + address + ", " + age + ", " + email + ", " + password);
	}
}
