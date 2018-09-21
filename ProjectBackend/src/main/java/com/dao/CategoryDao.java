package com.dao;


import java.util.List;

import org.springframework.stereotype.Service;

import com.models.Category;
@Service
public interface CategoryDao {
	Category saveCategory(Category category);
	Category UpdateCategory(Category category);
	Category deleteCategory(Category category);
	Category getCategory(int id);
	//List<Category> getAllCategories();

}
