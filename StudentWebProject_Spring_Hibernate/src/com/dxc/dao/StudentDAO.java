package com.dxc.dao;

import java.util.List;

import com.dxc.model.Student;

public interface StudentDAO {
	
	public List<Student> getStudent();

	public void save(Student theStudent);

	public Student getStudentById(int id);

	public void delete(int id);

}
