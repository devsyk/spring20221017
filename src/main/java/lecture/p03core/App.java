package lecture.p03core;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
	public static void main(String[] args) {
		String configLocation = "/lecture/p03core/context.xml";
		
		ApplicationContext context;
		context = new ClassPathXmlApplicationContext(configLocation);
		
		// Servlet, Dao 객체가 있는지 확인
		Servlet s = context.getBean(Servlet.class);
		Dao d = context.getBean(Dao.class);
		
		System.out.println(s); // null이 아니면 객체가 있음
		System.out.println(d); 
		
		System.out.println("프로그램 계속 실행");
	}
}
