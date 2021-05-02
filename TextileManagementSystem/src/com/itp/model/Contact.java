package com.itp.model;

/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */

/*
 * This is the contact model class
 * which stores the details of the contact us form.
 */

public class Contact {
	
	private String name;
	private String email;
	private String subject;
	private String message;
	
	
	/*
	 * @return name
	 */
	public String getName() {
		return name;
	}
	
	/*
	 * @param this.name set to name
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	/*
	 * @return email
	 */
	public String getEmail() {
		return email;
	}
	
	/*
	 * @param this.email set to email
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	
	/*
	 * @return subject
	 */
	public String getSubject() {
		return subject;
	}
	
	/*
	 * @param this.subject set to subject
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	/*
	 * @return message
	 */
	public String getMessage() {
		return message;
	}
	
	/*
	 * @param this.message set to message
	 */
	public void setMessage(String message) {
		this.message = message;
	}

}
