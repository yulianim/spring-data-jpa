package com.milysoft.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.milysoft.model.Cliente;

public interface IClienteDao extends PagingAndSortingRepository<Cliente, Long>{
	
	
}
