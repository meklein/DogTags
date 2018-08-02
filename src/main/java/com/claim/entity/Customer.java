package com.claim.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity
public class Customer implements Serializable{

//Constructors
	
	public Customer() {
		
	}
	
//Properties
	
	@Column
	private String firstName;
	@Column
	private String lastName;
	@Column
	private String phoneNum;
	@Column
	private String street;
	@Column
	private String aptNum;
	@Column
	private String city;
	@Column
	private String state;
	@Column
	private String zip;
	@Id
	private String email;
	@Column
	private String password;
	
	@OneToMany(mappedBy="owner")
	List<Pet> petList;
	

//Getters n Setters

public String getEmail() {
	return email;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getPhoneNum() {
	return phoneNum;
}
public void setPhoneNum(String phoneNum) {
	this.phoneNum = phoneNum;
}
public String getStreet() {
	return street;
}
public void setStreet(String street) {
	this.street = street;
}
public String getAptNum() {
	return aptNum;
}
public void setAptNum(String aptNum) {
	this.aptNum = aptNum;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getZip() {
	return zip;
}
public void setZip(String zip) {
	this.zip = zip;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public List<Pet> getPetList() {
	return petList;
}
public void setPetList(List<Pet> petList) {
	this.petList = petList;
}


}
