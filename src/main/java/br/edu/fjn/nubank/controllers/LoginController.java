/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.fjn.nubank.anotacao.Private;
import br.edu.fjn.nubank.components.FuncionarioSession;
import br.edu.fjn.nubank.repositorios.FuncionarioRepositorio;
import javax.inject.Inject;

/**
 *
 * @author david027
 */
@Controller
public class LoginController {
    
    @Inject
    private Result result;
    @Inject
    private FuncionarioRepositorio funcionarioRepositorio;
    @Inject    
    private FuncionarioSession funcionarioSession;
    
    @Private
    @Get("login")
    public void loginFun(){
        
    }
    @Private
    @Post("auth")
    public void auth(String userName, String Password){
        funcionarioSession.setLogado(true);
        funcionarioSession.setUserName(userName);
        result.redirectTo(HomeController.class).home();
    }
    
    @Get("sair")
    public void sair(){
        funcionarioSession.setLogado(false);
        result.redirectTo(this).loginFun();
    }
    
    
}
