package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.models.Authorities;
import com.models.Customer;

@Repository
@Transactional
public class CustomerDaoImpl {
@Autowired
private SessionFactory sessionfactory;
public void registerCustomer(Customer customer)
{
	Session session=sessionfactory.getCurrentSession();
	customer.getUser().setEnabled(true);
	System.out.println(customer.getUser().getAuthorities());
	Authorities authorities=new Authorities();
	authorities.setRole("ROLE_USER");
	customer.getUser().setAuthorities(authorities);
	authorities.setUser(customer.getUser());
	session.save(customer);
	
	
}
}
