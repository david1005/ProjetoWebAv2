/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.fjn.nubank.model.Chamado;
import br.edu.fjn.nubank.repositorios.ChamadoRepositorio;
import javax.inject.Inject;

/**
 *
 * @author david027
 */
@Controller
@Path("chamado")
public class ChamadoController {
    @Inject
    private Result result;
    
    @Inject
    private ChamadoRepositorio chamadoRepositorio;
    
    @Get("new")
    public void formularioChamado(){
        
    }
    
    @Post("salvar")
    public void salvar(Chamado chamado){
        chamadoRepositorio.salvar(chamado);
        result.redirectTo(this).listaChamado();
        
    }
    
    @Post("atualizar")
    public void atualizar(Chamado chamado){
        chamadoRepositorio.atualizar(chamado);
        result.redirectTo(this).listaChamado();
        
    } 
    
    @Get("detalhe/{id}")
    public void buscarPorId(Integer id){
        Chamado chamado = chamadoRepositorio.buscarPorId(id);
        result.include("chamado",chamado);
        result.redirectTo(this).atualizaChamado();
                
        
    }
            
        @Get("list")
        public void listaChamado(){
            result.include("chamadoList",chamadoRepositorio.list());
        }    
    
        public void atualizaChamado(){
            
        }
    
    
}
