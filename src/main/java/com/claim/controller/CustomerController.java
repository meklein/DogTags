package com.claim.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.claim.entity.Customer;
import com.claim.entity.Pet;
import com.claim.service.CustomerService;



@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;

	//for main landing page
	@RequestMapping("/")
	public ModelAndView index()
	{
		return new ModelAndView("index", "pet", new Pet());
	}
	
	//for login
	@RequestMapping("/login")
	public ModelAndView login()
	{
		return new ModelAndView("login", "customer", new Customer());
	}
	
	//for registering new customer
	@RequestMapping("/register")
	public ModelAndView register()
	{
		return new ModelAndView("register", "customer", new Customer());
	}
	
	//submits new customer and returns them to the login page
	@RequestMapping(value="/register", 
			method=RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("customer") Customer customer, HttpSession session) {
		//save user object to database
		customerService.saveCustomer(customer);
		session.setAttribute("newCustomer", "Thanks for registering! Please login to continue.");
		return new ModelAndView(new RedirectView("login", true));
	}
	
	//for customer login page
	@RequestMapping(value="/login", 
			method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("customer") Customer customer, HttpSession session) {
		
		Customer myCustomer = customerService.loginCustomer(customer.getEmail(), customer.getPassword());
		
		if (myCustomer != null)
		{
			session.setAttribute("loggedInCustomer", myCustomer);
			return new ModelAndView("home", "petList", myCustomer.getPetList());
		}
		else 
			session.setAttribute("notCustomer", "No login found. Please sign up and try again.");
			return new ModelAndView("login", "customer", new Customer());
	}


}
