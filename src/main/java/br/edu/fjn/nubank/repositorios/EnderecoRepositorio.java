/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.repositorios;

import br.edu.fjn.nubank.model.Endereco;
import br.edu.fjn.nubank.util.FabricaDeConexao;
import javax.persistence.EntityManager;

/**
 *
 * @author david027
 */
public class EnderecoRepositorio {
    
    public void salvar(Endereco endereco) {
		EntityManager manager = FabricaDeConexao.getEntityManager();

		try {
			manager.getTransaction().begin();
			manager.persist(endereco);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();
	}
    
    public void atualizar(Endereco endereco) {
		EntityManager manager = FabricaDeConexao.getEntityManager();

		try {
			manager.getTransaction().begin();
			manager.merge(endereco);
			manager.getTransaction().commit();

		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();
	}
    public void deletar(Endereco endereco) {
		EntityManager manager = FabricaDeConexao.getEntityManager();

		try {
			manager.getTransaction().begin();
			Endereco e = manager.find(Endereco.class, endereco.getId());
			manager.remove(e);// deletar
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();
	}
    
    public Endereco buscarPorId(Integer id) {
		EntityManager em = FabricaDeConexao.getEntityManager();
		Endereco e = em.find(Endereco.class, id);
		em.clear();
		return e;
	}
    
}
