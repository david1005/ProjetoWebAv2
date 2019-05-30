<%-- 
    Document   : home
    Created on : 21/05/2019, 18:42:17
    Author     : david027
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
         <link rel="stylesheet" href="${pageContext.request.contextPath}/css/semantic.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adjust.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/icon.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sem/components/icon.min.css"/>
        
    </head>
    <body>
        <div class="ui center aligned container">
            <%@include file="header.jsp" %>
        </div>
        
        <div class="ui container">
            <div class="ui grid stackable">
                <%@include file="nav.jsp" %>
               
            </div>
        </div>
                <div>
         <%@include file="footer.jsp" %>
                </div>
    </body>

