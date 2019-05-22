package br.edu.fjn.nubank.servico;

import br.edu.fjn.nubank.model.Cliente;
import br.edu.fjn.nubank.repositorios.ClienteRepositorio;




public class ClienteServico {
	
	private ClienteRepositorio clienteRepositorio = new ClienteRepositorio();
	
	public void salvar(Cliente cliente) throws Exception{
		if(cliente.getName()== null || cliente.getName().isEmpty()) {
			throw new Exception("Nome deve ser preenchido");
		}
		if(cliente.getEmail()== null) {
			throw new Exception("Email deve ser preenchido.");
		}
		if(cliente.getEndereco()== null) {
			throw new Exception("Endereço deve ser preenchido.");
		}
		if(cliente.getCpf()==null){
                    throw new Exception("Email deve ser preenchido.");
                }
                if(cliente.getPhone()==null){
                    throw new Exception("Email deve ser preenchido.");
                }
                
		clienteRepositorio.salvar(cliente);
	}
	
	public Cliente buscarPorId(Integer id) {
		return clienteRepositorio.buscarPorId(id);
	}
        

}
