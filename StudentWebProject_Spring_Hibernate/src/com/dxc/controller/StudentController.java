package com.dxc.controller;

//import java.text.SimpleDateFormat;
//import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dxc.Service.StudentService;
import com.dxc.model.Student;
import com.dxc.model.User;

@Controller
@RequestMapping("student")
public class StudentController {
	
	// need to inject te customer dao
	
	@RequestMapping("loginForm")
	public String loginForm(Model theModel) {
		theModel.addAttribute("newUser",new User());
		return "login";
	}
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value="loginValidate", method=RequestMethod.POST)
	public String studentLogin(@ModelAttribute("newUser") User user) {
		
	String un = user.getUsername();
	String pw = user.getPassword();
System.out.println(un);
System.out.println(pw);
		boolean b = studentService.validateLogin(un, pw);
		System.out.println(b);
		if(studentService.validateLogin(un, pw)) {
		return "redirect:/student/list";
	}
		else {
		return "redirect:/student/loginForm";
	}
	}
	
	@RequestMapping("logout")
	public String logout() {
		return "redirect:/student/loginForm";
	}
	
	@RequestMapping("list")
	public String listStudent(Model theModel) {
		
		List<Student> students = studentService.getStudent();
		theModel.addAttribute("Students",students);
		
		
		return "listStudents";
	}
	
	@RequestMapping ("showFormForAdd")
	public String addStudent(Model theModel) {
		
		theModel.addAttribute("newStudent",new Student());
		return "addStudent";
	}
	
	@PostMapping("addStudent")
	public String saveStudent(@ModelAttribute("newStudent") Student theStudent) {
		
		
		studentService.save(theStudent);
		
		return "redirect:/student/list";
		
	}
	
	@GetMapping("showFormForUpdate")
	public String showFormForUpdate(@RequestParam("id") int id,Model theModel) {
		System.out.println("hi anil ");
		Student student = studentService.getStudentById(id);
		theModel.addAttribute("student", student);
		
		return "showFormForUpdate";
	}
	
	@RequestMapping("Delete")
	public String deleteCustomer(@RequestParam("id") int id) {
		
			studentService.delete(id);
		
		return "redirect:/student/list";
		
	}
}
