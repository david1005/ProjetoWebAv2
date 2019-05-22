/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.repositorios;

import br.edu.fjn.nubank.model.Funcionario;
import br.edu.fjn.nubank.util.FabricaDeConexao;
import javax.persistence.EntityManager;

/**
 *
 * @author david027
 */
public class FuncionarioRepositorio {
    
    public void salvar(Funcionario funcionario) {

		EntityManager manager = FabricaDeConexao.getEntityManager();

		try {
			manager.getTransaction().begin();
			manager.persist(funcionario);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();

	}
    
    
    public void atualizar(Funcionario funcionario) {
		EntityManager manager = FabricaDeConexao.getEntityManager();

		try {
			manager.getTransaction().begin();
			manager.merge(funcionario);
			manager.getTransaction().commit();

		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();
	}
    
    
    public void deletar(Funcionario funcionario) {
		EntityManager manager = FabricaDeConexao.getEntityManager();

		try {
			manager.getTransaction().begin();
			Funcionario f = manager.find(Funcionario.class, funcionario.getId());
			manager.remove(f);// deletar
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();
	}
    
    public Funcionario buscarPorId(Integer id) {
		EntityManager em = FabricaDeConexao.getEntityManager();
		Funcionario f = em.find(Funcionario.class, id);
		em.clear();
		return f;
	}
}
