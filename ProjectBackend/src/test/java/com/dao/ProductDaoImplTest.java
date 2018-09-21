package com.dao;



import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.configuration.DbConfiguration;
import com.models.Product;

import junit.framework.TestCase;

public class ProductDaoImplTest extends TestCase {
	ApplicationContext context=new AnnotationConfigApplicationContext(DbConfiguration.class,ProductDaoImpl.class);
    ProductDao productdao=(ProductDao) context.getBean("productDaoImpl");
    
	public void testSaveProduct()
	{
		Product obj=new Product();
        obj.setName("abc");
        obj.setPrice(600);
        obj.setDesc("pqr");
    
        productdao.saveProduct(obj);
    }
	
	
	public void testUpdateProduct()
	{
		Product obj1=productdao.getProduct(5);
		obj1.setName("hij");
		obj1.setDesc("lkdiiididm");
		productdao.updateProduct(obj1);
		assertTrue(obj1.getName()=="pqr");
		assertTrue(obj1.getDesc()=="abc");
	}
	public void testDeleteProduct()
	{
		Product obj1=productdao.getProduct(6);
		productdao.deleteProduct(obj1);
		
	}
	public void testgetAllProducts()
	{
		List<Product> products=productdao.getAllProducts();
		assertTrue(products.size()>0);
	}

}
