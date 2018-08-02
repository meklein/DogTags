package com.claim.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository <Customer, String>{

	@Query(value="Select * from Customer where email=:email and password=:password", nativeQuery=true)
	public Customer login(@Param("email") String email, @Param("password") String password);
	
}