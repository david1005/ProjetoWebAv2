<%-- 
    Document   : formularioChamado
    Created on : 22/05/2019, 10:25:29
    Author     : david027
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agendar Suporte</title>
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
                        <h2 class="ui header center aligned">Agendamento</h2>
                        <form action="${pageContext.request.contextPath}/chamado/salvar" method="post" class="ui form">
                            <div class="field">
                                <div class="fields">
                                    <div class="eight wide field">
                                        <label style="color: white">Status</label>
                                        <select type="text" class="ui fluid search dropdown" name="chamado.status" value="${chamado.status}" required>
                                            <option value="agendado">Agendado</option>
                                            <option value="realizado">Realizado</option>
                                        </select>
                                    </div>
                                    <div class="eight wide field">
                                        
                                        
                                        <label style="color: white">Data da Visita</label>
                                        <input type="datetime-local" name="chamado.data" value="${chamado.data}" required>
                                    </div>
                                </div>
                            </div>
                            <div class="field">
                                <div class="fields">
                                    <div class="eight wide field">
                                        <label style="color: white">Código do Cliente</label>
                                        <input type="numero" name="chamado.cliente.id" value="${chamado.cliente.id}" placeholder="Ex: 123" required>
                                    </div>
                                    
                                    
                                    <div class="sixteen wide field">
                                        <label style="color: white">Descrição do Problema</label>
                                        <textarea type="text" name="chamado.descricao" value="${chamado.descricao}" required ></textarea>
                                        
                                    </div>
                                </div>
                            </div>
                             <div class="sixteen wide column right aligned">
                                <div class="ui buttons">
                                    <button class="ui olive basic button"><a href="${pageContext.request.contextPath}/">Cancelar</a></button>
                                   
                                    <button type="submit" class="ui olive basic button">Salvar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                 </div>                   
            </div>
            
        </div>
    </body>
</html>
