package org.zerock.controller.lecture.p05redirect;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.lecture.JavaBean03;
import org.zerock.domain.lecture.Student;

@Controller
@RequestMapping("ex22")
public class Controller22 {

	@RequestMapping("sub01")
	public String method1(Model model) {
		model.addAttribute("name", "park");
		return "redirect:/ex22/sub02";
	}
	@RequestMapping("sub02")
	public void method2(Model model) {
		boolean hasName = model.containsAttribute("name");
		System.out.println(hasName);
	}
	
	@RequestMapping("sub03")
	public String method3(HttpSession session) {
		session.setAttribute("name", "park");
		return "redirect:/ex22/sub04";
	}
	@RequestMapping("sub04")
	public void method4(HttpSession session) {
		String name = (String) session.getAttribute("name");
		System.out.println(name);
	}
	
	@RequestMapping("sub05")
	public String method5(HttpSession session) {
		Student student = new Student();
		student.setClassName("soccer");
		student.setName("kim");
		student.setStudentNumber("13"); 
		session.setAttribute("student", student);
		return "redirect:/ex22/sub06";
	}
	@RequestMapping("sub06")
	public void method6(HttpSession session) {
		Student student = (Student) session.getAttribute("student");
		System.out.println(student.getName());
		System.out.println(student.getClassName());
		System.out.println(student.getStudentNumber());
	}
	
	@RequestMapping("sub07")
	public String method7(RedirectAttributes rttr) {
		Student student = new Student();
		student.setName("lee");
		student.setClassName("spring");
		student.setStudentNumber("99");
		rttr.addFlashAttribute("student", student);
		return "redirect:/ex22/sub08";
	}
	@RequestMapping("sub08")
	public void method8(Student student) {
		System.out.println(student);
	}
	
	@RequestMapping("sub09")
	public String method9(RedirectAttributes rttr) {
		JavaBean03 bean3 = new JavaBean03();
		bean3.setScore(90);
		bean3.setClassName("spring");
		bean3.setStudentNumber("99");
		bean3.setLocation("seoul");
		bean3.setAvg(70);
		rttr.addFlashAttribute("myBean", bean3);
		return "redirect:/ex22/sub10";
	}
	@RequestMapping("sub10")
	public void method10(@ModelAttribute("myBean") JavaBean03 bean3) {
		System.out.println(bean3);
	}
}
