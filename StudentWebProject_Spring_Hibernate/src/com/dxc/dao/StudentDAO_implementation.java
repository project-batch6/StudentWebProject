package com.dxc.dao;

import java.util.List;

//import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;

import com.dxc.model.Student;

@Repository
public class StudentDAO_implementation implements StudentDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Student> getStudent() {
		
		// get the current hibernate session 
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Student> theQuery = 
				currentSession.createQuery("from Student", Student.class);
		
		// execute query and get result list
		List<Student> students = theQuery.getResultList();
	
		
		System.out.println(students);
		
		
		// return the result
		
		return students;
		
	}

	@Override
	public void save(Student theStudent) {
		
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(theStudent);
		
	}

	@Override
	public Student getStudentById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Student theStudent = session.get(Student.class, id);
		
		
		return theStudent;
	}

	@Override
	public void delete(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		javax.persistence.Query theQuery = session.createQuery("delete from Student where id=: studentid");
		theQuery.setParameter("studentid", id);
		theQuery.executeUpdate();
		
	}

}
