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

    @Get("remove")
    public void deletar(Cliente cliente) {
        clienteRepositorio.deletar(cliente);
        result.redirectTo(this).listaCliente();
    }

    @Post("atualizar")
    public void Atualizar(Cliente cliente) {
        clienteRepositorio.atualizar(cliente);
        result.redirectTo(this).listaCliente();
    }

    @Get("list")
    public void listaCliente() {
        result.include("clienteList", clienteRepositorio.list());

    }

    @Get("detalhe/{id}")
    public void buscaPorId(Integer id) {
        Cliente cliente = clienteRepositorio.buscarPorId(id);
        result.include("cliente", cliente);
        result.redirectTo(this).atualizaCliente();

    }

    public void atualizaCliente() {

    }

    @Get("busca")
    public void buscarPorNome(String busca) {
        Cliente cliente = clienteRepositorio.buscarPorNome(busca);
        result.include("clienteList", cliente);
        result.redirectTo(this).listaCliente();

    }
}
