/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.nubank.intercepts;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.edu.fjn.nubank.anotacao.Private;
import br.edu.fjn.nubank.components.FuncionarioSession;
import br.edu.fjn.nubank.controllers.LoginController;
import javax.inject.Inject;


/**
 *
 * @author david027
 */
@Intercepts
public class LoginIntercept implements Interceptor{
    @Inject
    private FuncionarioSession funcionarioSession;
    @Inject
    private Result result;

    @Override
    public void intercept(InterceptorStack is, ControllerMethod cm, Object o) throws InterceptionException {
            if(funcionarioSession.logado()){
                is.next(cm, o);
            }else{
                result.redirectTo(LoginController.class).loginFun();
            }
    }

    @Override
    public boolean accepts(ControllerMethod cm) {
        return !cm.containsAnnotation(Private.class);
    }                         
}
