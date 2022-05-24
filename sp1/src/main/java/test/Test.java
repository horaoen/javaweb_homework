package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main(String[ ] args ){
         ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
         HelloBean helloBean = (HelloBean)ctx.getBean("hello");
         helloBean.hello();
    }
}