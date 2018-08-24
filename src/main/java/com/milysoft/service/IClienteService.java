package com.milysoft.service;

import java.util.List;

import com.milysoft.model.Cliente;

	public interface IClienteService {
	public List<Cliente> findAll();
	public void save(Cliente cliente);
	public Cliente findOne(Long id);
	public void delete(Long id);
}
