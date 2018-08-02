package com.claim.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Customer;
import com.claim.entity.Pet;
import com.claim.repository.PetRepository;

@Service
public class PetService {

		@Autowired
		PetRepository petRepository;

		
		public void savePet(Pet pet) {
			petRepository.save(pet);
		}
	
		public Pet findPet(int petID) {
			Pet foundPet = petRepository.findOne(petID);
			return foundPet;
		}	
		
		public ArrayList<Pet> listPet(Customer customer) {
			//petRepository.save(pet);
			
			return null;
		}

		public void delete(int petID) {
			 petRepository.delete(petID);
		}

	}


