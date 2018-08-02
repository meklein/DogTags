package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.claim.entity.Pet;

@Repository
public interface PetRepository extends JpaRepository<Pet, Integer>{
	
	
	@Query(value=
	"Select * from Pet" +
	"Where owner=:owner", nativeQuery=true)
	
	public Pet listPets(@Param("owner") String owner);

}
