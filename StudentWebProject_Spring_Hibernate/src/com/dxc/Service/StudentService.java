package com.dxc.Service;

import java.util.List;


import com.dxc.model.Student;

public interface StudentService {

	public List<Student> getStudent();

	public void save(Student theStudent);

	public Student getStudentById(int id);

	public void delete(int id);
	
	public boolean validateLogin(String username, String password); 
}
