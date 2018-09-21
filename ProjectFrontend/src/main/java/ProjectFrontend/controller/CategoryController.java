package ProjectFrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.models.Category;
import com.models.Product;
@Controller
public class CategoryController {
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private ProductDao productDao;
public CategoryController(){
	System.out.println("categoryController Bean is Created");
}
@RequestMapping(value="/all/getAllcategorys")
public String getAllProducts(Model model){
	List<Category> category=productDao.getAllCategories();
	
	model.addAttribute("categoryList",category);
	
	return "listofcategory";
}

@RequestMapping(value="/all/getcategory/{id}")
public String getcategory(@PathVariable int id,Model model){
	Category category=categoryDao.getCategory(id);
	model.addAttribute("categoryObj",category);
	return "viewcategory";
}
@RequestMapping(value="/admin/deletecategory/{id}")
public String deletecategory(@PathVariable int id,Model model){
	Category p=categoryDao.getCategory(id);
	
	categoryDao.deleteCategory(p);
	return "redirect:/all/getAllcategorys";
}


@RequestMapping(value="/admin/getcategoryform")
public String getcategoryform(Model model){
	Category p=new Category();
	model.addAttribute("category",p);
	return "categoryform";
}
@RequestMapping(value="/admin/addcategory")
public String addcategory(@ModelAttribute(name="category") Category category  ){
	categoryDao.saveCategory(category);
	return "redirect:/all/getAllcategorys";
}
@RequestMapping(value="/admin/updatecategory/{id}")
public String getUpdatecategoryForm(@PathVariable int id,Model model){
	Category category=categoryDao.getCategory(id);
	model.addAttribute("category",category);
//	model.addAttribute("categories",categoryDao.getAllCategories());
	categoryDao.UpdateCategory(category);
	return "updatecategory";}
@RequestMapping(value="/admin/updatecategory")
public String updateCategory(@ModelAttribute Category category){
	categoryDao.UpdateCategory(category);
	return "redirect:/all/getAllcategorys";

}
}