package com.milysoft.dao;

import java.util.List;

import com.milysoft.model.Cliente;

public interface IClienteDao {
	public List<Cliente> findAll();
	public void save(Cliente cliente);

}
