package com.claim.entity;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Base64;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Pet implements Serializable{
	
//Constructors

	public Pet() {
		
	}
	
	public Pet(String petName) {
	this.petName = petName;
	}
	
//Properties
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int petID;
	@Column
	private byte[] photo;
	@Column
	private String petName;
	@Column
	private String petType;
	@Column
	private String breed;
	@Column
	private String birthday;
	@ManyToOne
	@JoinColumn(name="email", nullable=false)
	private Customer owner;
	@Column
	private String emergencyPOC;
	@Column
	private String POCPhoneNum;
	@Column
	private String vetName;
	@Column
	private String vetStreet;
	@Column
	private String vetAptNum;
	@Column
	private String vetCity;
	@Column
	private String vetState;
	

	@Column
	private String vetZip;
	@Column
	private String vetPhoneNum;
	@Column
	private String medicalInfo;
	@Column
	private String dietaryInfo;
	@Column
	private String specialInstructions;
	

//Getters N Setters

	public String getPetName() {
		return petName;
	}
	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public int getPetID() {
		return petID;
	}

	public void setPetID(int petID) {
		this.petID = petID;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetType() {
		return petType;
	}
	public void setPetType(String petType) {
		this.petType = petType;
	}
	public String getBreed() {
		return breed;
	}
	public void setBreed(String breed) {
		this.breed = breed;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public Customer getOwner() {
		return owner;
	}
	public void setOwner(Customer owner) {
		this.owner = owner;
	}
	public String getEmergencyPOC() {
		return emergencyPOC;
	}
	public String getPOCPhoneNum() {
		return POCPhoneNum;
	}

	public void setPOCPhoneNum(String pOCPhoneNum) {
		POCPhoneNum = pOCPhoneNum;
	}

	public void setEmergencyPOC(String emergencyPOC) {
		this.emergencyPOC = emergencyPOC;
	}
	public String getVetName() {
		return vetName;
	}

	public void setVetName(String vetName) {
		this.vetName = vetName;
	}

	public String getVetStreet() {
		return vetStreet;
	}

	public void setVetStreet(String vetStreet) {
		this.vetStreet = vetStreet;
	}

	public String getVetAptNum() {
		return vetAptNum;
	}

	public void setVetAptNum(String vetAptNum) {
		this.vetAptNum = vetAptNum;
	}

	public String getVetCity() {
		return vetCity;
	}

	public void setVetCity(String vetCity) {
		this.vetCity = vetCity;
	}

	public String getVetState() {
		return vetState;
	}

	public void setVetState(String vetState) {
		this.vetState = vetState;
	}

	public String getVetZip() {
		return vetZip;
	}

	public void setVetZip(String vetZip) {
		this.vetZip = vetZip;
	}

	public String getVetPhoneNum() {
		return vetPhoneNum;
	}

	public void setVetPhoneNum(String vetPhoneNum) {
		this.vetPhoneNum = vetPhoneNum;
	}
	public String getMedicalInfo() {
		return medicalInfo;
	}
	public void setMedicalInfo(String medicalInfo) {
		this.medicalInfo = medicalInfo;
	}
	public String getDietaryInfo() {
		return dietaryInfo;
	}
	public void setDietaryInfo(String dietaryInfo) {
		this.dietaryInfo = dietaryInfo;
	}
	public String getSpecialInstructions() {
		return specialInstructions;
	}
	public void setSpecialInstructions(String specialInstructions) {
		this.specialInstructions = specialInstructions;
	}

	public String showPicture() {
		String encoded = "";
		if (photo != null && photo.length > 0) {
			encoded = Base64.getEncoder().encodeToString(photo);
		}
		return encoded;
	}

	public void setData(Pet pet) {
		this.photo = pet.photo;
		this.petName = pet.petName;
		this.petType = pet.petType;
		this.breed =pet.breed;
		this.birthday = pet.birthday;
		this.owner = pet.owner;
		this.emergencyPOC = pet.emergencyPOC;
		POCPhoneNum = pet.POCPhoneNum;
		this.vetName = pet.vetName;
		this.vetStreet = pet.vetStreet;
		this.vetAptNum = pet.vetAptNum;
		this.vetCity = pet.vetCity;
		this.vetState = pet.vetState;
		this.vetZip = pet.vetZip;
		this.vetPhoneNum = pet.vetPhoneNum;
		this.medicalInfo = pet.medicalInfo;
		this.dietaryInfo = pet.dietaryInfo;
		this.specialInstructions = pet.specialInstructions;
		
	}

	@Override
	public String toString() {
		return "Pet [petID=" + petID + ", photo=" + Arrays.toString(photo) + ", petName=" + petName + ", petType="
				+ petType + ", breed=" + breed + ", birthday=" + birthday + ", owner=" + owner + ", emergencyPOC="
				+ emergencyPOC + ", POCPhoneNum=" + POCPhoneNum + ", vetName=" + vetName + ", vetStreet=" + vetStreet
				+ ", vetAptNum=" + vetAptNum + ", vetCity=" + vetCity + ", vetState=" + vetState + ", vetZip=" + vetZip
				+ ", vetPhoneNum=" + vetPhoneNum + ", medicalInfo=" + medicalInfo + ", dietaryInfo=" + dietaryInfo
				+ ", specialInstructions=" + specialInstructions + "]";
	}

	
}
