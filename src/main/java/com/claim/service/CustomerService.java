package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.claim.entity.Customer;
import com.claim.repository.CustomerRepository;


@Service
public class CustomerService {

	@Autowired
	CustomerRepository customerRepository;
	
	public void saveCustomer(Customer customer) {
		this.customerRepository.save(customer);
	}
	
	public Customer findCustomer(String email) {
		return this.customerRepository.findOne(email);
	}
	public Customer loginCustomer(String email, String password) {
		return customerRepository.login(email, password);
	}		
}
