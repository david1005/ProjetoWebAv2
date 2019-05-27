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
import br.edu.fjn.nubank.model.Usuario;
import br.edu.fjn.nubank.repositorios.LoginRepositorio;

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
    private FuncionarioSession funcionarioSession;

    @Private
    @Get("login")
    public void loginFun() {

    }
    
    
    @Private
    @Get("registrar")
    public void cadastro(){
        
    }


    @Private
    @Post("auth")
    public void auth(){
        funcionarioSession.setLogado(true);        
        result.redirectTo(HomeController.class).home();
    }

    
    @Private
    @Post("cadastrar")
    public void salvar(Usuario user){
        LoginRepositorio loginRepositorio = new LoginRepositorio();
        
        if(loginRepositorio.buscarPorNome(user.getUserName()) ==null ){
            loginRepositorio.salvar(user);
            result.redirectTo(this).loginFun();
        }else{
            result.include("menssagem","Usuário já existe.");
            result.redirectTo(this).cadastro();
        }
       
        
    }
    @Private
    @Post("login")
    public void login(Usuario user){
        LoginRepositorio loginRepositorio = new LoginRepositorio();
        
        if(loginRepositorio.buscaPorNomeESenha(user.getUserName(), user.getPassword()) != null){
            funcionarioSession.setLogado(true);
            result.redirectTo(HomeController.class).home();
        }else{
            result.include("menssagem", "Usuario ou senha incorretos.");
            result.redirectTo(this).loginFun();
        }
    }

    @Get("sair")
    public void sair() {
        funcionarioSession.setLogado(false);
        result.redirectTo(this).loginFun();
    }

}
