package ProjectFrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CustomerDao;
import com.models.Customer;

@Controller
public class CustomerController {
	@Autowired
	private CustomerDao customerdao;
		public CustomerController() {
		System.out.println("customer controller initialized");
	}


	@RequestMapping(value="/all/registrationform")
	public String getRegistrationForm(Model model){
		model.addAttribute("customer",new Customer());
		return "registrationform";
	}
	@RequestMapping(value="/all/registercustomer")
	public String registerCustomer(@ModelAttribute(name="customer") Customer customer){

		
		
		//Call DAO to persist customer details
		customerdao.registerCustomer(customer);
		return "Login";
	}
}
