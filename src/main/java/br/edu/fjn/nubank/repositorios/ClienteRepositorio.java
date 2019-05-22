/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.repositorios;

import br.edu.fjn.nubank.model.Cliente;
import br.edu.fjn.nubank.util.FabricaDeConexao;
import java.util.List;
import javax.persistence.EntityManager;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author david027
 */
public class ClienteRepositorio {
    
    public void salvar(Cliente cliente) {
		EntityManager manager = FabricaDeConexao.getEntityManager();
                
                manager.getTransaction().begin();
		try {
			
			manager.persist(cliente);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();
	}
    
    
        public void atualizar(Cliente cliente) {
		EntityManager manager = FabricaDeConexao.getEntityManager();

		try {
			manager.getTransaction().begin();
			manager.merge(cliente);
			manager.getTransaction().commit();

		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();
	}
        
        public void deletar(Cliente cliente) {
		EntityManager manager = FabricaDeConexao.getEntityManager();

		try {
			manager.getTransaction().begin();
			Cliente c = manager.find(Cliente.class, cliente.getId());
			manager.remove(c);// deletar
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();
	}
        
        // LISTA TODOS OS CLIENTE
    public List<Cliente> list() {
        EntityManager em = FabricaDeConexao.getEntityManager();
        try {
            List<Cliente> cliente = em.createQuery("from cliente", Cliente.class).getResultList();
            return cliente;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        } finally {
            em.close();
        }
    }
    
    
    public Cliente buscarPorId(Integer id) {
		EntityManager em = FabricaDeConexao.getEntityManager();
		Cliente c = em.find(Cliente.class, id);
		em.clear();
		return c;
	}
    
    // BUSCA CLIENTE POR NOME OU CPF
    public Cliente buscarPorNome(String name) {
           
		EntityManager em = FabricaDeConexao.getEntityManager();

		Session s = (Session) em.getDelegate();
		Criteria c = s.createCriteria(Cliente.class);
		c.createAlias("cliente", "c");

		Criterion c1 = Restrictions.eq("c.nome", name);

		c.add(c1);

		Cliente cliente = (Cliente) c.uniqueResult();
		em.close();

		return cliente;
	}    }
    
        
        
    

