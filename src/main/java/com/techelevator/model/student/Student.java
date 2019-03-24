package com.techelevator.model.student;

import org.hibernate.validator.constraints.NotBlank;

public class Student {
	
	private int studentId;
	
	//@NotBlank(message= "Last Name is required")
	private String lastName;
	
	//@NotBlank(message= "First Name is required")
	
	private String firstName;
	
	private String gender;
	
	//@NotBlank(message= "Pleasure enter your desired Degree"
	private String desiredDegree;
	
	//@NotBlank(message= "Please enter your Math Score"
	private int greMath;
	
	//@NotBlank(message= "Please enter your Verbal Score"
	private int greVerbal;
	
	//@NotBlank(message= "Please enter your Verbal Score"
	private int greWriting;
	
	//@NotBlank
	//@Email
	private String email;
	
	
	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getStudentId() {
		return studentId;
	
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDesiredDegree() {
		return desiredDegree;
	}
	public void setDesiredDegree(String desiredDegree) {
		this.desiredDegree = desiredDegree;
	}
	public int getGreMath() {
		return greMath;
	}
	public void setGreMath(int greMath) {
		this.greMath = greMath;
	}
	public int getGreVerbal() {
		return greVerbal;
	}
	public void setGreVerbal(int greVerbal) {
		this.greVerbal = greVerbal;
	}
	public int getGreWriting() {
		return greWriting;
	}
	public void setGreWriting(int greWriting) {
		this.greWriting = greWriting;
	}
	
}
