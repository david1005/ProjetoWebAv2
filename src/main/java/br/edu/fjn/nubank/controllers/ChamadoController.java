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
import br.edu.fjn.nubank.model.Cliente;
import br.edu.fjn.nubank.repositorios.ChamadoRepositorio;
import br.edu.fjn.nubank.repositorios.ClienteRepositorio;
import br.edu.fjn.nubank.util.FabricaDeConexao;
import java.util.List;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

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
    public void formularioChamado() {
        ClienteRepositorio clienteRepositorio = new ClienteRepositorio();
        List<Cliente> clientes = clienteRepositorio.list();

        result.include("clientes", clientes);
    }

    @Post("salvar")
    public void salvar(Chamado chamado) {
        chamadoRepositorio.salvar(chamado);
        result.redirectTo(this).listaChamado();

    }
    
  

    
    @Post("update")    
    public void atualizar(Chamado chamado) {
        ChamadoRepositorio chamadoRepositorio = new ChamadoRepositorio();
        chamadoRepositorio.atualizar(chamado);
//        if (chamadoRepositorio.buscarPorId(chamado.getId()) != null) {
//            Chamado ch = chamadoRepositorio.buscarPorId(chamado.getId());
//
//            if (chamado.getStatus() != null) {
//                ch.setStatus(chamado.getStatus());
//            }                
//            if (chamado.getData() != null) {
//                 ch.setData(chamado.getData());
//            }
//            if (chamado.getCliente() != null) {
//                 ch.setCliente(chamado.getCliente());
//            }
//            
//            if (chamado.getDescricao() != null) {
//                 ch.setDescricao(chamado.getDescricao());
//            }
//                chamadoRepositorio.atualizar(ch);
                result.redirectTo(this).listaChamado();  
                

    }
    
 

    /*
    @Get("detalhe/{id}")
    public void buscarPorId(Integer id) {
        Chamado chamado = chamadoRepositorio.buscarPorId(id);
        result.include("chamado", chamado);
        result.redirectTo(this).atualizaChamado();
    }
    */

    /*
    @Post("remover")
    public void deletar(Chamado chamado) {
        chamadoRepositorio.deletar(chamado);
        result.redirectTo(this).listaChamado();
    }
     */
    @Get("list")
    public void listaChamado() {
        result.include("chamadoList", chamadoRepositorio.list());

    }

    @Get("atualizar")
    public void atualizaChamado() {

    }

    @Get("id/{id}")
    public void get(Integer id) {
        result.include("chamado", chamadoRepositorio.buscarPorId(id));
        result.of(this).atualizaChamado();
    }

    /*
    @Get("buscar")
    public void buscaPorNome(String name) {
        ClienteRepositorio clienteRepositorio = new ClienteRepositorio();
        List<Cliente> cl = clienteRepositorio.buscaPorNome(name);
        result.include("chamadoList", cl);
        result.of(this).listaChamado();
    }
    */
    
    @Get("buscar")
    public void buscaPorNome(Chamado  chamado){
        ChamadoRepositorio chamadoRepositorio = new ChamadoRepositorio();
        List<Chamado> chamados = chamadoRepositorio.buscaPorClienteName(chamado.getCliente().getName());
        result.include("chamadoList", chamados);
        result.redirectTo(this).listaChamado();
    }


}
