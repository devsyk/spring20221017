package lecture.p10core;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
	public static void main(String[] args) {
		String loc = "/lecture/p10core/context.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(loc);
		
		Controller c = context.getBean(Controller.class);
		Service s = context.getBean(Service.class);
		
		System.out.println(c);
		System.out.println(s);
		System.out.println(c.getService()); // 위 객체와 같은 값 출력
	}
}
