/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.model;

import java.io.Serializable;
import java.util.Calendar;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author david027
 */
@Entity
public class Chamado implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Integer id;
    
    private String descricao;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn
    private Funcionario funcionario;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn
    private Cliente cliente;

    @Enumerated(EnumType.STRING)
    private ChamadoStatus status;

    @Temporal(TemporalType.DATE)
    private Calendar data;
    
    public Chamado(){
        
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public ChamadoStatus getStatus() {
        return status;
    }

    public void setStatus(ChamadoStatus status) {
        this.status = status;
    }

    public Calendar getData() {
        return data;
    }

    public void setChamadoData(Calendar data) {
        this.data = data;
    }

    
    
}
