package com.milysoft.dao;

import org.springframework.data.repository.CrudRepository;

import com.milysoft.model.Usuario;

public interface IUsuarioDao extends CrudRepository<Usuario, Long>{

	public Usuario findByUsername(String username);
}
