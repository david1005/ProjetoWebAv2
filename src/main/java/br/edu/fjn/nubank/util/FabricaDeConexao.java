package br.edu.fjn.nubank.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FabricaDeConexao {
	private static  EntityManagerFactory emf = Persistence.createEntityManagerFactory("OrmPU");
	
	
	public static EntityManager getEntityManager() {
		return emf.createEntityManager();
	}

	public static void close() {
		emf.close();
	}
}
