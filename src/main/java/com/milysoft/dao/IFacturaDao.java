package com.milysoft.dao;

import org.springframework.data.repository.CrudRepository;

import com.milysoft.model.Factura;

public interface IFacturaDao extends CrudRepository<Factura, Long> {
	
}
