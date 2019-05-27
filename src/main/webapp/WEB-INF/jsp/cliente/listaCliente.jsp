<%-- 
    Document   : listaCliente
    Created on : 21/05/2019, 19:49:31
    Author     : david027
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Cliente</title>
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
                        <h2 class="ui header center aligned">Lista de Clientes</h2>
                        <div class="ui divider"></div>
                        <form action="${pageContext.request.contextPath}/cliente/busca" class="ui form" method="get">
                            <div class="ui action fluid input">
                                <input type="text" name="busca" placeholder="Buscar por Nome do Cliente...">
                                <button class="ui icon button">
                                    <i class="search icon"></i>
                                </button>
                            </div>
                        </form>
                        <div class="ui divider"></div>
                        <div class="ui column grid">
                            <div class="column">
                                <table class="ui small stackable striped table">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nome</th>
                                            <th>CPF</th>
                                            <th>Email</th>
                                            <th>Telefone</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${clienteList}" var="cliente">
                                            <tr>
                                                <td>${cliente.id}</td>
                                                <td>${cliente.name}</td>
                                                <td>${cliente.cpf}</td>
                                                <td>${cliente.email}</td>
                                                <td>${cliente.phone}</td>
                                                <td class="right aligned">                                                   
                                                    <div >                                                                                                            
                                                        <form action="${pageContext.request.contextPath}/cliente/remover" method="post">
                                                        <input type="hidden" name="cliente.id" value="${cliente.id}"/>
                                                        <button type="submit" class="ui left attached button">Remover</button>
                                                        </form>
                                                    </div>
                                                    
                                                
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
    </body>
</html>


<!--i class="window close icon"></i-->