package com.dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.configuration.DbConfiguration;
import com.models.Signup;

import junit.framework.TestCase;

public class SignupDaoImpTest extends TestCase {
	ApplicationContext context=new AnnotationConfigApplicationContext(DbConfiguration.class,SignupDaoImp.class);
     SignupDao signupdao= (SignupDao) context.getBean("SignupDaoImp");
 public void testsaveUser()
 {
	 Signup obj=new Signup();
	 obj.setFname("jyoti");
	 obj.setLname("khubchandani");
	 obj.setEmail("jyoti@gamil.com");
	 signupdao.saveUser(obj);
	 
 
 }
 public void testdeleteUser()
 {
	 Signup obj1=signupdao.getUSer("jyoti@gmail.com");
	 signupdao.deleteUser(obj1);
	 
 }
 
}
