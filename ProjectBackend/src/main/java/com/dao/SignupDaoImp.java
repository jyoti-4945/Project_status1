package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.models.Product;
import com.models.Signup;

@Repository
@Transactional
public class SignupDaoImp implements SignupDao
{

	@Autowired
	private SessionFactory sessionFactory;	

	public Signup saveUser(Signup signup) {
		Session session=sessionFactory.getCurrentSession();
		session.save(signup); 
    	return signup; 
	}

	public Signup deleteUser(Signup signup) {
		Session session=sessionFactory.getCurrentSession();
		 session.delete(signup);
		 return signup;
	
			}

	public Signup getUSer(String mail) {
		Session session=sessionFactory.getCurrentSession();
		Signup signup= (Signup) session.get(Signup.class,mail);
		return signup;
	}

}
