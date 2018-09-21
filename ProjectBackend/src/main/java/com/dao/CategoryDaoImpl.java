package com.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.models.Category;

@Repository("CategoryDao")
@Transactional
public class CategoryDaoImpl {

	
	@Autowired(required=true)
	private SessionFactory sessionFactory;	

	public Category saveCategory(Category category)
	{
		Session session=(Session)sessionFactory.getCurrentSession();
		session.save(category); 
    	return category; 
	}
	 public Category updateCategory(Category category)
	{
		Session session=sessionFactory.getCurrentSession();
		session.update(category);
		return category;
		
	}
	 public Category deleteCategory(Category category)
	 {
		 Session session=sessionFactory.getCurrentSession();
		 session.delete(category);
		 return category;
	 }
	
	public Category getCategory(int id)
	{
		Session session=(Session)sessionFactory.getCurrentSession();
		Category category= (Category) session.get(Category.class, id);
		return category;
		
	}

	/*public List<Category> getAllCategories() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		return categories;
	
	}
*/

	


}
