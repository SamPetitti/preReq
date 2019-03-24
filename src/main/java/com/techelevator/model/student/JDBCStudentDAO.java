package com.techelevator.model.student;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class JDBCStudentDAO implements StudentDAO {

private JdbcTemplate jdbcTemplate;

@Autowired
	public JDBCStudentDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
}

	@Override
	public List<Student> getAllStudents() {
		List<Student> studentList = new ArrayList<>();
		String sqlGetAllStudents = "Select * "+
								   "From student";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllStudents);
		while(results.next()) {
			studentList.add(mapRowToStudents(results));
		}
		return studentList;
	}

	@Override
	public void saveStudent(Student student) {
	String sqlSaveStudent = "INSERT INTO student(last_name, first_name,"
			+ " gender, desired_degree, gre_math, gre_verbal, gre_writing, email)"+
				"VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sqlSaveStudent ,
							student.getLastName(),
							student.getFirstName(),
							student.getGender(),
							student.getDesiredDegree(),
							student.getGreMath(),
							student.getGreVerbal(),
							student.getGreWriting(),
							student.getEmail());
		}
	
	
	private Student mapRowToStudents(SqlRowSet results) {
		Student s = new Student();
		s.setLastName(results.getString("last_name"));
		s.setFirstName(results.getString("first_name"));
		s.setGender(results.getString("gender"));
		s.setDesiredDegree(results.getString("desired_degree"));
		s.setGreMath(results.getInt("gre_math"));
		s.setGreVerbal(results.getInt("gre_verbal"));
		s.setGreWriting(results.getInt("gre_writing"));
		s.setEmail(results.getString("email"));
		
		return s;
	}


}
