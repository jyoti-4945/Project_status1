package com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.models.Category;
import com.models.Product;


@Service
public interface ProductDao
{
	Product saveProduct(Product product);
	Product updateProduct(Product product);
	Product getProduct(int id);
	Product deleteProduct(Product product);
	List<Product> getAllProducts();//fetch all the records from product table
	List<Category> getAllCategories();

	
}
