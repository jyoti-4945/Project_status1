package ProjectFrontend.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.models.Product;

@Controller
public class ProductController 
{
	@Autowired
	ProductDao obj;
	CategoryDao obj1;
		public ProductController() {
		System.out.println("ProductController initialized");
	}
	@RequestMapping(value="/all/getallproducts")
	public String getAllProducts(Model model){
		List<Product> products=obj.getAllProducts();
		for(Product p: products)
		{
			System.out.println(p);
		}
		model.addAttribute("productsList",products);
		return "listofproduct";//logical view name
		}
	@RequestMapping(value="/all/getproduct/{id}")
	public String getProduct(@PathVariable int id,Model model){
		Product product=obj.getProduct(id);
		model.addAttribute("productObj",product);
		return "Viewproduct";
	}
	@RequestMapping(value="/admin/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id){
		Product p=obj.getProduct(id);
		
		obj.deleteProduct(p);
		return "redirect:/all/getallproducts";
	}
	@RequestMapping(value="/admin/getproductform")
	public String getproductform(Model model){
		Product p=new Product();
		model.addAttribute("product",p);
	model.addAttribute("categories",obj.getAllCategories());
		
		return "productform";
		
	}
	@RequestMapping(value="/admin/addproduct")
	public String addProduct(@Valid @ModelAttribute(name="product") Product product,BindingResult result,Model model,HttpServletRequest request ){
		if(result.hasErrors())
		{
			model.addAttribute("categories",obj.getAllCategories());
			return "productform";
		}
		
		MultipartFile img=product.getImg();
		System.out.println(request.getServletContext().getRealPath("/"));
		obj.saveProduct(product);
		Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/Images/"+product.getId()+".png");
		
		if(!img.isEmpty()&&img!=null){
			try {
				img.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}	
			}
		return "redirect:/all/getallproducts";
	}

	@RequestMapping(value="/admin/updateproduct/{id}")
	public String getUpdateProductForm(@PathVariable int id,Model model){
		Product product=obj.getProduct(id);
		model.addAttribute("product",product);
		model.addAttribute("categories",obj.getAllCategories());
		return "updateproduct";

		}
	
	@RequestMapping(value="/admin/updateproduct")
	public String updateProduct(@Valid @ModelAttribute Product product,BindingResult result,Model model){//product will have updated values
		if(result.hasErrors()){
			   model.addAttribute("categories",obj.getAllCategories());
			   return "updateproduct";
		   }
			obj.updateProduct(product);
			return "redirect:/all/getallproducts";
		}
	@RequestMapping(value="/all/searchByCategory")
	public String searchByCategory(@RequestParam String searchCondition ,Model model){
		if(searchCondition.equals("All"))
			model.addAttribute("searchCondition","");
		else
		model.addAttribute("searchCondition",searchCondition);
		model.addAttribute("productsList",obj.getAllProducts());
		return "listofproduct";
		
	}
	}
