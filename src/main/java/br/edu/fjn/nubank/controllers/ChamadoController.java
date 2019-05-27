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
    public void formularioChamado() {

    }

    @Post("salvar")
    public void salvar(Chamado chamado) {
        chamadoRepositorio.salvar(chamado);
        result.redirectTo(this).listaChamado();

    }

    @Post("update")
    public void atualizar(Chamado chamado) {
        ChamadoRepositorio chamadoRepositorio = new ChamadoRepositorio();

        if (chamadoRepositorio.buscarPorId(chamado.getId()) != null) {
            Chamado ch = chamadoRepositorio.buscarPorId(chamado.getId());

            if (chamado.getStatus() != null) {
                {
                    ch.setStatus(chamado.getStatus());
                }
                if (chamado.getData() != null) {
                    ch.setData(chamado.getData());
                }
                if (chamado.getCliente() != null) {
                    ch.setCliente(chamado.getCliente());
                }
                if (chamado.getDescricao() != null) {
                    ch.setDescricao(chamado.getDescricao());
                }
                chamadoRepositorio.atualizar(ch);
                result.redirectTo(this).listaChamado();
            } else {
                result.include("mensagem", "Não existe Chamado com esse Id");
                result.redirectTo(this).atualizaChamado();
            }
        }
    }

    @Get("detalhe/{id}")
    public void buscarPorId(Integer id) {
        Chamado chamado = chamadoRepositorio.buscarPorId(id);
        result.include("chamado", chamado);
        result.redirectTo(this).atualizaChamado();
    }

    @Get("list")
    public void listaChamado() {
        result.include("chamadoList", chamadoRepositorio.list());

    }

    @Get("atualizar")
    public void atualizaChamado() {

    }
}
