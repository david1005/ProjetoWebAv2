<%-- 
    Document   : atualizaChamado
    Created on : 22/05/2019, 15:40:53
    Author     : david027
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Chamado</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/semantic.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adjust.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sem/components/icon.min.css"/>
    </head>
    <body>
        <div class="ui center aligned container">
            <%@include file="../home/header.jsp" %>
        </div>
        <div class="ui container">
            <div class="ui grid stackable">
                <%@include file="../home/nav.jsp" %>
                <div class="twelve wide column right aligned">
                    <div class="ui inverted text container segment">
                        <h2 class="ui header center aligned">Atualizar Chamado</h2>
                        <form action="${pageContext.request.contextPath}/chamado/update" method="post" class="ui form">                            
                             <input type="hidden" name="chamado.id" value="${chamado.id}"/>                            
                            
                             <div class="field">
                                <div class="fields">
                                    
                                    <div class="eight wide field">
                                        <label style="color: white">Status</label>
                                        <select type="text" class="ui fluid search dropdown" name="chamado.status" value="${chamado.status}" required>
                                            <option value="AGENDADO" value="${AGENDADO}">Agendado</option>
                                            <option value="REALIZADO" value="${REALIZADO}">Realizado</option>
                                        </select>
                                    </div>
                                    <div class="eight wide field">
                                        <label style="color: white">Data da Visita</label>
                                        <input type="date" name="chamado.data" value="${chamado.data}" required>
                                    </div>
                                </div>
                            </div>                                                                                                                                                
                                    
                            <div class="field">
                                <div class="fields">
                                    <div class="eight wide field">
                                       <select class="form-control" name="chamado.cliente.id" >
                                            <option value="${chamado.cliente.id}" selected>${chamado.cliente.name}</option>
                                        </select>
                                    </div>

                                    <div class="sixteen wide field">
                                        <label style="color: white">Descrição do Problema</label>
                                        <textarea type="text" name="chamado.descricao" value="${chamado.descricao}" required >${chamado.descricao}</textarea>

                                    </div>
                                </div>
                            </div>
                                        
                                            

                            <div class="sixteen wide column right aligned">
                                <div class="ui buttons">
                                    <button class="ui  olive basic button"><a href="${pageContext.request.contextPath}/">Cancelar</a></button>                                    
                                    <button type="submit" class="ui olive basic button">Atualizar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
