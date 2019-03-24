package com.techelevator.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.techelevator.model.student.Student;
import com.techelevator.model.student.StudentDAO;


@Controller 
public class HelloController {

@Autowired
public StudentDAO studentDao;
	

	@RequestMapping({"/", "preReq"})
	public String displayGreeting() {
		List<Student> students = studentDao.getAllStudents();
		for(Student student: students) {
			System.out.println(student.getFirstName() + " " + student.getLastName());
		}
		return "preReq";
	}
	
	@RequestMapping(path= "newStudent", method = RequestMethod.GET)
	  public String displayNewStudent(ModelMap studentHolder) {
		if(!studentHolder.containsAttribute("Student")) {
			studentHolder.addAttribute("Student", new Student());
		}
		
		return "newStudent";
	}
	
	@RequestMapping(path= "newStudent", method=RequestMethod.POST)
	public String newStudentRegistration(/*@Valid*/ @ModelAttribute("Student") Student newStudent,
			BindingResult result,
			RedirectAttributes flash) {
		if(result.hasErrors()) {
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "Survey", result);
			flash.addFlashAttribute("Student", newStudent);
			return "redirect:/newStudent";
		}
		studentDao.saveStudent(newStudent);
		return "redirect:/newStudentConfirmation";
	}
	
	@RequestMapping(path="newStudentConfirmation", method= RequestMethod.GET)
	public String showConfirmation() {
		return "newStudentConfirmation";
	}
			
}
