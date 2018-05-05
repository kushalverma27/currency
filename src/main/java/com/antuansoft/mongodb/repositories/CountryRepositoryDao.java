package com.antuansoft.mongodb.repositories;

import org.springframework.data.repository.CrudRepository;

import com.antuansoft.mongodb.domain.Country;


public interface CountryRepositoryDao extends CrudRepository<Country, String> {
	
	

}