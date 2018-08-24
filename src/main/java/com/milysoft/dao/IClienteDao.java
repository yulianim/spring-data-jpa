package com.milysoft.dao;

import org.springframework.data.repository.CrudRepository;

import com.milysoft.model.Cliente;

public interface IClienteDao extends CrudRepository<Cliente, Long>{
	
	
}
