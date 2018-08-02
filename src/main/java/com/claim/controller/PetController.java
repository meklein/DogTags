package com.claim.controller;

import java.io.IOException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.claim.entity.Customer;
import com.claim.entity.Pet;
import com.claim.service.CustomerService;
import com.claim.service.PetService;

@Controller
public class PetController {
	
	@Autowired
	PetService petService;
	
	@Autowired
	CustomerService customerService;
	
	
	@RequestMapping("/profile")
	public ModelAndView profile()
	{
		return new ModelAndView("profile");
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact()
	{
		return new ModelAndView("contact", "customer", new Customer());
	}
	

	
	//for pet profile info from index search
	@RequestMapping(value="/findPet", method=RequestMethod.POST)
	public ModelAndView findPet(@ModelAttribute("pet")Pet pet, HttpSession session) {
		
		Pet lostPet = petService.findPet(pet.getPetID());

			if (lostPet != null)
			{
				session.setAttribute("petInfo", lostPet);
				return new ModelAndView("profile", "pet", lostPet);
			}
			else 
			{
				session.setAttribute("notFound", "No pet found. Please try again.");
				return new ModelAndView("index", "pet", new Pet());
			}
		}

	//for adding a new pet
	@RequestMapping("/add")
	public ModelAndView add(HttpSession session)
	{
	if (session.getAttribute("loggedInCustomer") != null) {
			return new ModelAndView("add", "pet", new Pet());
		}
		else
			session.setAttribute("notLoggedIn", "Please login.");
			return new ModelAndView(new RedirectView("login", true));
	}
	
	//submits new pet and returns them to the home page
	@RequestMapping(value="/add", 
			method=RequestMethod.POST)
	public ModelAndView add(@ModelAttribute("pet") Pet pet, HttpSession session) {
		System.out.println("Here!");
		Customer loggedInCustomer = (Customer) session.getAttribute("loggedInCustomer");
		
		if (loggedInCustomer != null) {
			//save pet object to database
			pet.setOwner(loggedInCustomer);
			loggedInCustomer.getPetList().add(pet);
			petService.savePet(pet);
			session .setAttribute("addPetPic", pet);
			return new ModelAndView("upload");	
		}
		else
			session.setAttribute("notLoggedIn", "Please login.");
			return new ModelAndView(new RedirectView("login", true));
	}
	
	
	
	//edit pet info
	@RequestMapping(value="/edit", 
					method=RequestMethod.GET)
		public ModelAndView edit(@RequestParam("petId") int petID, HttpSession session) {

		Customer loggedInCustomer = (Customer) session.getAttribute("loggedInCustomer");

				if (loggedInCustomer != null) {
					
					return new ModelAndView("edit", "pet", petService.findPet(petID));	
				}
				else
					session.setAttribute("notLoggedIn", "Please login.");
				return new ModelAndView(new RedirectView("login", true));
		}
	
	//edit pet info
	@RequestMapping(value="/update", 
					method=RequestMethod.POST)
		public ModelAndView update(@ModelAttribute("pet") Pet pet, HttpSession session) {

		Customer loggedInCustomer = (Customer) session.getAttribute("loggedInCustomer");

				if (loggedInCustomer != null) {
					for (Pet myPet : loggedInCustomer.getPetList()) {
						if(myPet.getPetID() == pet.getPetID())
						{
							loggedInCustomer.getPetList().remove(myPet);
						}
					}
					
					//save pet object to database
					Pet newPet = petService.findPet(pet.getPetID());
					newPet.setData(pet);
					petService.savePet(newPet);
					
					loggedInCustomer.getPetList().add(newPet);
					return new ModelAndView("home", "petList", loggedInCustomer.getPetList());	
				}
				else
					session.setAttribute("notLoggedIn", "Please login.");
				return new ModelAndView(new RedirectView("login", true));
		}
	
	
	@RequestMapping(value="/delete", 
			method=RequestMethod.GET)
public ModelAndView delete(@RequestParam("petId") int petID, HttpSession session) {

		Customer loggedInCustomer = (Customer) session.getAttribute("loggedInCustomer");

		if (loggedInCustomer != null) {
			//save pet object to database
			for(Pet myPet: loggedInCustomer.getPetList())
			{
				if(myPet.getPetID() == petID)
				{
					loggedInCustomer.getPetList().remove(myPet);
					break;
				}
			}
			petService.delete(petID);
			return new ModelAndView("home", "petList", loggedInCustomer.getPetList());	
		}
		else
			session.setAttribute("notLoggedIn", "Please login.");
		return new ModelAndView(new RedirectView("login", true));
}
	
	@RequestMapping(value="/upload",
			method=RequestMethod.POST)
	public ModelAndView upload(@RequestParam("file")MultipartFile file, HttpSession session) {
			
			Customer loggedInCustomer = (Customer) session.getAttribute("loggedInCustomer");
			Pet pet = (Pet)session.getAttribute("addPetPic");
				try {
					pet.setPhoto(file.getBytes());
					pet.setOwner(loggedInCustomer);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				petService.savePet(pet); 
				
			return new ModelAndView("home","petList", loggedInCustomer.getPetList());

}

	
}

