package com.dxc.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dxc.model.User;


@Repository
public class UserDAO_implementation implements UserDAO {
	@Autowired
	SessionFactory sessionFactory;
	public UserDAO_implementation() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean loginValidate(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		User theUser = session.get(User.class, username);
	
		String pw=	theUser.getPassword();
		String un=	theUser.getUsername();
		System.out.println(un);
		System.out.println(pw);
		if(un.equals(username) && pw.equals(password)) {
			return true;
		}
		else {
		return false;
	}
	}

}
