package com.farmstory.exception;

public class UnAuthorizedException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public UnAuthorizedException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UnAuthorizedException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public UnAuthorizedException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public UnAuthorizedException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}
	
}
