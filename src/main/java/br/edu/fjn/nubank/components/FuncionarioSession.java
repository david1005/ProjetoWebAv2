/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.components;

import java.io.Serializable;
import javax.enterprise.context.SessionScoped;



/**
 *
 * @author david027
 */
@SessionScoped

public class FuncionarioSession implements Serializable{
    
    
    
    private boolean logado;

 

    public boolean isLogado() {
        return logado;
    }

    public void setLogado(boolean logado) {
        this.logado = logado;
    }

    
    
    
    
}
