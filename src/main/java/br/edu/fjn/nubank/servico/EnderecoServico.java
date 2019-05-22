package br.edu.fjn.nubank.servico;

import br.edu.fjn.nubank.model.Endereco;
import br.edu.fjn.nubank.repositorios.EnderecoRepositorio;





public class EnderecoServico {

	private EnderecoRepositorio enderecoRepositorio = new EnderecoRepositorio();

	public void salvar(Endereco endereco)  throws Exception{
		if(endereco.getRua()== null){
			throw new Exception("Rua deve ser preenchido.");
		}
		if(endereco.getNumero() == null) {
			throw new Exception("Numero deve ser preenchido.");
		}
		if(endereco.getBairro()== null) {
			throw new Exception("Bairro deve ser preenchido.");
		}
                if(endereco.getCep()==null){
                    throw new Exception("Cep deve ser preenchido.");
                }
		if(endereco.getCidade()== null) {
			throw new Exception("Cidade deve ser preenchido.");
		}
		enderecoRepositorio.salvar(endereco);
		
	}
        public Endereco buscarPorId(Integer id){
            return enderecoRepositorio.buscarPorId(id);
        }

}
