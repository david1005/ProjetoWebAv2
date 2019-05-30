/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.conversores;

import br.com.caelum.vraptor.Convert;
import br.com.caelum.vraptor.converter.Converter;
import br.edu.fjn.nubank.model.Chamado;
import java.util.Date;
import javax.enterprise.context.ApplicationScoped;

/**
 *
 * @author david027
 */
@Convert(Date.class)
@ApplicationScoped
public class DateConverter implements Converter<Date> {

    private final Chamado chamado;

    public DateConverter(Chamado chamado) {
        this.chamado = chamado;
    }

    @Override
    public Date convert(String string, Class<? extends Date> type) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    


    }
