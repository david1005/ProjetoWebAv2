<%-- 
    Document   : listaChamado
    Created on : 27/05/2019, 07:44:14
    Author     : david027
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Chamado</title>
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
                        <h2 class="ui header center aligned">Lista de Chamados</h2>
                        <div class="ui divider"></div>
                        <form action="${pageContext.request.contextPath}/chamado/busca" class="ui form" method="get">

                            <div class="ui divider"></div>
                            <div class="ui column grid">
                                <div class="column">
                                    <table class="ui small stackable striped table">
                                        <thead>
                                            <tr>
                                                <th>Córdigo</th>
                                                <th>Status</th>
                                                <th>Data da Visita</th>
                                                <th>Nome do Cliente</th>
                                                <th>Descrição do Problema </th>                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${chamadoList}" var="chamado">
                                                <tr>
                                                    <td>${chamado.id}</td>
                                                    <td>${chamado.status}</td>
                                                    <td>${chamado.data}</td>
                                                    <td>${chamado.cliente.name}</td>
                                                    <td>${chamado.descricao}</td>                                                                                                      
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        
    </body>
</html>
