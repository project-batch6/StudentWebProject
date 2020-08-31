package com.dxc.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.dxc.dao.StudentDAO;
import com.dxc.dao.UserDAO;
import com.dxc.model.Student;

@Service
public class StudentServiceImplementation implements StudentService {

	public StudentServiceImplementation() {
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	private StudentDAO studentDAO;
	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public List<Student> getStudent() {
		return studentDAO.getStudent();	}

	@Override
	@Transactional
	public void save(Student theStudent) {
		
		studentDAO.save(theStudent);
	}

	@Override
	@Transactional
	public Student getStudentById(int id) {
		
		return studentDAO.getStudentById(id);
	}

	@Override
	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		studentDAO.delete(id);
	}

	@Override
	@Transactional
	public boolean validateLogin(String username, String password) {
		// TODO Auto-generated method stub
		return userDAO.loginValidate(username, password);
	}
}
