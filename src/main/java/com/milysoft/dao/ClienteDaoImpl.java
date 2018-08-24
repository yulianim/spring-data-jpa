package com.milysoft.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.milysoft.model.Cliente;
@Repository
public class ClienteDaoImpl implements IClienteDao{

	@PersistenceContext
	private EntityManager em;
	@Transactional(readOnly=true)
	@Override
	public List<Cliente> findAll() {
		// TODO Auto-egenerated method stub
		return em.createQuery("from Cliente").getResultList();
	}
	@Override
	@Transactional
	public void save(Cliente cliente) {
		// TODO Auto-generated method stub
		em.persist(cliente);
		
	}

}
