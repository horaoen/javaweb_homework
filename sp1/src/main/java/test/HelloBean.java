package test;
public class HelloBean {
	private String message;
	private Student person;
	
    public void setMessage(String msg){
        this.message = msg;
    }
    public void hello(){
        System.out.println(this.person.getName() + ", 欢迎来到Spring的世界");
    }
    
     public void setPerson(Student p) {
    	 this.person = p;
     }
}