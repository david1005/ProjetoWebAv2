package br.edu.fjn.nubank.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FabricaDeConexao {
	//INTERFACE USADA PARA INTERAGIR COM A FABRICA DO GERENCIADOR DE ENTIDADES.
    private static  EntityManagerFactory emf = Persistence.createEntityManagerFactory("OrmPU");
	
	
	public static EntityManager getEntityManager(){
            
                //CRIA E RETORNA UMA ENTIDADE 
		return emf.createEntityManager();
	}
        //METODO PARA FECHAR CONEXAO
	public static void close() {
		emf.close();
	}
}
