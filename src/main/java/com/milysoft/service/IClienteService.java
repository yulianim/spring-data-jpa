package com.milysoft.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.milysoft.model.Cliente;
import com.milysoft.model.Factura;
import com.milysoft.model.Producto;

	public interface IClienteService {
	public List<Cliente> findAll();
	public Page<Cliente> findAll(Pageable pageable);
	public void save(Cliente cliente);
	public Cliente findOne(Long id);
	public void delete(Long id);
	public List<Producto> findByNombre(String term);
	public void saveFactura(Factura factura);
}
