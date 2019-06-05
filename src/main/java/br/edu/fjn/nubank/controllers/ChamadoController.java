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
        chamadoRepositorio.atualizar(chamado);//        
        result.redirectTo(this).listaChamado();
    }

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

  
    @Get("buscar")
    public void buscaPorNome(String name) {   
        System.out.print(name);
        List<Chamado> chamados = chamadoRepositorio.buscaPorClienteName(name);
        result.include("chamadoList", chamados);
        result.of(this).listaChamado();        
    }
}
