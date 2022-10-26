package org.zerock.controller.lecture.p07mybatis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.lecture.JavaBean07;
import org.zerock.domain.lecture.JavaBean08;
import org.zerock.domain.lecture.JavaBean09;
import org.zerock.mapper.lecture.Mapper05;

@Controller
@RequestMapping("ex32")
public class Controller32 {
	
	@Autowired
	private Mapper05 mapper;
	
	@RequestMapping("sub01")
	public void method1() {
		JavaBean07 order = mapper.getOrder();
		System.out.println(order);
	}
	
	@RequestMapping("sub02")
	public void method2() {
		JavaBean08 order = mapper.getOrder2();
		System.out.println(order);
	}
	
	@RequestMapping("sub03")
	public void method3() {
		JavaBean09 product = mapper.getProduct();
		//System.out.println(product);
		System.out.println("ID: " + product.getId());
		System.out.println("Name: " + product.getName());
		System.out.println("Price: " + product.getPrice());
		System.out.println("SupplierID: " + product.getSupplier().getId());
		System.out.println("SupplierName: " + product.getSupplier().getName());
		System.out.println("SupplierPhone: " + product.getSupplier().getPhone());
	}
}
