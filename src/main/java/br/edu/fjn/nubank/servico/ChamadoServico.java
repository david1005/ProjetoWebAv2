package br.edu.fjn.nubank.servico;

import br.edu.fjn.nubank.model.Chamado;
import br.edu.fjn.nubank.repositorios.ChamadoRepositorio;




public class ChamadoServico {
	
	private ChamadoRepositorio chamadoRepositorio = new ChamadoRepositorio();
	
	public void salvar(Chamado chamado) {
		if(chamado.getId() != null) {
			chamadoRepositorio.salvar(chamado);
		}
	}

}
