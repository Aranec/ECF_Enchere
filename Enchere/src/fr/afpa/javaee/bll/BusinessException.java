package fr.afpa.javaee.bll;

public class BusinessException extends Exception{
	
	public BusinessException() {
		
	}
	
	public BusinessException(String message) {
		super(message);
	}
}
