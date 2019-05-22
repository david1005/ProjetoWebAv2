package br.edu.fjn.nubank.servico;

import br.edu.fjn.nubank.model.Funcionario;
import br.edu.fjn.nubank.repositorios.FuncionarioRepositorio;




public class FuncionarioServico {
	
	private FuncionarioRepositorio funcionarioRepositorio = new FuncionarioRepositorio();
	
	public void salvar(Funcionario funcionario)throws Exception {
		if(funcionario.getName() == null || funcionario.getName().isEmpty()){
			throw new Exception("Nome deve ser preenchido");
		}
		
		funcionarioRepositorio.salvar(funcionario);
	}
        
	

}
