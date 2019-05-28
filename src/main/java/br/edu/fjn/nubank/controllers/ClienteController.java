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
import br.edu.fjn.nubank.model.Cliente;
import br.edu.fjn.nubank.repositorios.ClienteRepositorio;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author david027
 */
@Controller
@Path("cliente")
public class ClienteController {

    @Inject
    private Result result;
    @Inject
    private ClienteRepositorio clienteRepositorio;

    @Get("new")
    public void formularioCliente() {

    }

    @Post("salvar")
    public void salvar(Cliente cliente) {
        clienteRepositorio.salvar(cliente);
        result.redirectTo(this).listaCliente();

    }

    @Post("update")
    public void Atualizar(Cliente cliente) {
        ClienteRepositorio clienteRepositorio = new ClienteRepositorio();
        
        if(clienteRepositorio.buscarPorId(cliente.getId()) != null){
            Cliente cl = clienteRepositorio.buscarPorId(cliente.getId());
            
            if(cliente.getName() != null){
                cl.setName(cliente.getName());                
            }
            if(cliente.getCpf() != null){
                cl.setCpf(cliente.getCpf());
            }
            if(cliente.getEmail() != null){
                cl.setCpf(cliente.getCpf());                
            }
            if(cliente.getPhone() != null){
                cl.setPhone(cliente.getPhone());                
            }
            if(cliente.getEndereco() != null){
                cl.setEndereco(cliente.getEndereco());
            }
            clienteRepositorio.atualizar(cl);
            result.redirectTo(this).listaCliente();
        }else{
            result.include("menssagem", "Não existe Cliente relacionado com esse ID");
            result.redirectTo(this).atualizaCliente();        
        } 
    }

    @Get("list")
    public void listaCliente() {
        result.include("clienteList", clienteRepositorio.list());

    }

    @Post("remover")
    public void deletar(Cliente cliente) {
        clienteRepositorio.deletar(cliente);
        result.redirectTo(this).listaCliente();
    }

    @Get("busca")
    public void buscarPorNome(String busca) {
        Cliente cliente = clienteRepositorio.buscarPorNome(busca);
        result.include("clienteList", cliente);
        result.redirectTo(this).listaCliente();

    }

    @Get("detalhe/{id}")
    public void buscaPorId(Integer id) {
        Cliente cliente = clienteRepositorio.buscarPorId(id);
        result.include("cliente", cliente);
        result.redirectTo(this).atualizaCliente();

    }
    
    @Get("atualizar")
    public void atualizaCliente() {

    }
    @Get("id/{id}")
    public void get(Integer id){
        result.include("cliente", clienteRepositorio.buscarPorId(id));        
        result.of(this).atualizaCliente();
    }

}

/*
                                        
        
@Get("detalhe")
    public void buscaPorId(Integer id) {
        Cliente cliente = clienteRepositorio.buscarPorId(id);
        result.include("cliente", cliente);
        result.redirectTo(this).atualizaCliente();

    }

   @Get("id/{id}")
    public void get(Integer id) {
        result.include("cliente", clienteRepositorio.buscarPorId(id));
        result.include("actionForm", "atualizar");
        result.include("labelButton", "Atualizar");
        result.of(this).formularioCliente();
    }
 */
