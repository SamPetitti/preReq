package com.techelevator.model.student;

import java.util.List;

public interface StudentDAO {
	
	
	public List<Student> getAllStudents();
	
	public void saveStudent(Student student);
	

}
