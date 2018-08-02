package com.claim.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Customer;
import com.claim.entity.Pet;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Controller
public class SmsController {
	
	static String ACCOUNT_SID ="AC6b5a6c64a9f986bc0b742a1fde8e67a8";
	static String AUTH_TOKEN ="75513438e397814c3dc21ca33b6f98d9";
	static String TWILIO_NUMBER = "+1 618 400 0864";
	
	
	@RequestMapping (value="/notify", method =RequestMethod.POST)
	public ModelAndView sendSms(@ModelAttribute("customer") Customer customer, HttpSession session){

	Pet pet = (Pet) session.getAttribute("petInfo");
	Twilio.init(ACCOUNT_SID,AUTH_TOKEN);
	String msg = "Your pet "+pet.getPetName()+"'s DogTags profile was just accessed by "+customer.getFirstName()+" "+customer.getLastName()+" who is attempting to contact you in regards to your pet. Contact "+customer.getFirstName()+" as soon as possible for the latest information about your pet. \n"  +customer.getFirstName()+" "+customer.getLastName()+"\n"+customer.getPhoneNum();
	
	Twilio.init(ACCOUNT_SID,AUTH_TOKEN);
	Message message = Message.creator(new PhoneNumber(pet.getOwner().getPhoneNum()),
	new PhoneNumber(TWILIO_NUMBER), msg).create();	System.out.println(message.getSid());

	Twilio.init(ACCOUNT_SID,AUTH_TOKEN);
	Message POCmessage = Message.creator(new PhoneNumber(pet.getPOCPhoneNum()),
	new PhoneNumber(TWILIO_NUMBER), msg).create();	System.out.println(POCmessage.getSid());
	
	session.setAttribute("thankYou", "We have notified the owner and emergency point of contact. Thank you for helping animals in need!");
	return new ModelAndView("profile", "pet", pet);
	}
	
}
