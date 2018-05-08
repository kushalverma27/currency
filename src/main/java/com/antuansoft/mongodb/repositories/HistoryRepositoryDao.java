package com.antuansoft.mongodb.repositories;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.repository.CrudRepository;

import com.antuansoft.mongodb.domain.History;


public interface HistoryRepositoryDao extends CrudRepository<History, String> {

	@Cacheable(value="history")
	Iterable<History> findAll();
	
	
	
}