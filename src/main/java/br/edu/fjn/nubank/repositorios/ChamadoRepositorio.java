/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.repositorios;

import br.edu.fjn.nubank.model.Chamado;
import br.edu.fjn.nubank.model.Cliente;
import br.edu.fjn.nubank.util.FabricaDeConexao;
import java.util.List;
import javax.persistence.EntityManager;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author david027
 */
public class ChamadoRepositorio {
    
    public void salvar(Chamado chamado) {
		EntityManager manager = FabricaDeConexao.getEntityManager();
		try {
			manager.getTransaction().begin();
			manager.persist(chamado);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
		}
		manager.close();
	}
    
    public void atualizar(Chamado chamado) {
		EntityManager manager = FabricaDeConexao.getEntityManager();
		try {
			manager.getTransaction().begin();
			manager.merge(chamado);
			manager.getTransaction().commit();
		} catch (Exception e) {
                        e.printStackTrace();
			manager.getTransaction().rollback();
		}
		manager.close();
	}
    /*
      public void deletar(Chamado chamado) {
        EntityManager manager = FabricaDeConexao.getEntityManager();

        try {
            manager.getTransaction().begin();
            Chamado c = manager.find(Chamado.class, chamado.getId());
            manager.remove(c);// deletar
            manager.getTransaction().commit();
        } catch (Exception e) {
            manager.getTransaction().rollback();
        }
        manager.close();
    }
    */
    public Chamado buscarPorId(Integer id) {
		EntityManager em = FabricaDeConexao.getEntityManager();
		Chamado c = em.find(Chamado.class, id);
		em.clear();
		return c;
	}
    
    public List<Chamado> list() {
        EntityManager em = FabricaDeConexao.getEntityManager();
        try {
            List<Chamado> chamado = em.createQuery("from Chamado", Chamado.class).getResultList();
            return chamado;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        } finally {
            em.close();
        }
    }
  
  public List<Chamado> buscaPorClienteName(String name){            
        EntityManager em = FabricaDeConexao.getEntityManager();
        Session session = (Session) em.getDelegate();
        Criteria criteria = session.createCriteria(Chamado.class);
        criteria.createAlias("cliente", "c");
        criteria.add(Restrictions.ilike("c.name",name, MatchMode.ANYWHERE));
        List<Chamado> chamadoList = criteria.list();
        em.close();
        return chamadoList;
    }
}
