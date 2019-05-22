<%-- 
    Document   : atualizaChamado
    Created on : 22/05/2019, 15:40:53
    Author     : david027
--%>

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
                    <div class="ui text container segment">
                        <h2 class="ui header center aligned">Atualizar Chamado</h2>
                        <form action="${pageContext.request.contextPath}/chamado/atualizar" method="post" class="ui form">
                            <input type="hidden" name="chamado.id" value="${chamado.id}">
                            <div class="field">
                                <div class="fields">
                                    <div class="eight wide field">
                                        <label>Status</label>
                                        <select type="text" class="ui fluid search dropdown" name="chamado.status" value="${chamado.status}" required>
                                            <option value="agendado">Agendado</option>
                                            <option value="realizado">Realizado</option>
                                        </select>
                                    </div>
                                    <div class="eight wide field">
                                        <label>Data da Visita</label>
                                        <input type="datetime-local" name="chamado.chamadoData" value="${chamado.chamadoData}" required>
                                    </div>
                                </div>
                            </div>
                            <div class="field">
                                <div class="fields">
                                    <div class="eight wide field">
                                        <label>Código do Cliente</label>
                                        <input type="text" name="chamado.cliente" value="${chamado.cliente}" placeholder="Ex: 002" required>
                                    </div>
                                  
                                     <div class="sixteen wide field">
                                        <label>Descrição do Problema</label>
                                        <textarea type="text" name="chamado.descricao" value="${chamado.descricao}" required ></textarea>
                                        
                                    </div>
                                </div>
                            </div>
                            
                            <div class="sixteen wide column right aligned">
                                <div class="ui buttons">
                                    <button class="ui button"><a href="${pageContext.request.contextPath}/">Cancelar</a></button>
                                    <div class="or" data-text="ou"></div>
                                    <button type="submit" class="ui positive button">Salvar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
