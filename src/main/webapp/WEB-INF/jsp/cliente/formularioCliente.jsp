<%-- 
    Document   : formularioCliente
    Created on : 21/05/2019, 19:49:19
    Author     : david027
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/semantic.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adjust.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sem/components/icon.min.css"/>
    </head>
    <body>
        <div class="ui center aligned container">
            <%@include file="../home/header.jsp" %>
        </div>
        <div class="ui container ">
            <div class="ui grid stackable">
                <%@include file="../home/nav.jsp" %>
                <div class="twelve wide column right aligned">
                    <div class="ui inverted text container segment">
                        <h2 class="ui header center aligned">Cadastrar Cliente</h2>
                        <form action="${pageContext.request.contextPath}/cliente/salvar" method="post" class="ui form">

                            <div class="field">
                                <div class="fields">
                                    <div class="nine wide field" >
                                        <label style="color: white">Nome</label>
                                        <input type="text" name="cliente.name"   maxlength="255" placeholder="Ex: Francisco Silva">
                                    </div>

                                    <div class="five wide field">
                                        <label style="color: white">CPF</label>
                                        <input id="cpf" type="text" name="cliente.cpf"  placeholder="Ex: 999-999-999-09" pattern="[0-9]{11}" maxlength="11" title="digite um cpf válido" required>
                                    </div>
                                </div>
                            </div>
                            <h4 class="ui dividing left aligned header info" style="color: white">Contato</h4>
                            <div class="fields">
                                <div class="eight wide field">
                                    <label style="color: white">Email</label>
                                    <input type="text" name="cliente.email"  placeholder="Ex: fjn@gmail.com"pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                                </div>
                                <div class="eight wide field">
                                    <label style="color: white">Telefone</label>
                                    <input type="number" name="cliente.phone"  placeholder="Ex: 999999999" maxlength="9" required>
                                </div>
                            </div>

                            <div class="fields">
                                <div class="ten wide field">
                                    <label style="color: white">Rua</label>
                                    <input type="text" name="cliente.endereco.rua"  placeholder="Ex: Lonardo da Silva Fontes" required>
                                </div>
                                <div class="three wide field">
                                    <label style="color: white">Número</label>
                                    <input type="text" name="cliente.endereco.numero"  placeholder="Ex: 111A" required>
                                </div>
                                <div class="five wide field">
                                    <label style="color: white">CEP</label>
                                    <input type="text" name="cliente.endereco.cep"  placeholder="Ex: 63180-00" required>
                                </div
                                <div class="ten wide field">
                                    <label style="color: white">BAIRRO</label>
                                    <input type="text" name="cliente.endereco.bairro"  placeholder="Ex: Joao cabral" required>
                                </div>
                                <div class="six wide field">
                                    <labels tyle="color: white">CIDADE</label>
                                        <input type="text" name="cliente.endereco.cidade"  placeholder="Ex. Barbalha" required>
                                        </div>
                                        <div class="sixteen wide column right aligned" >
                                            <div  class="ui buttons">
                                                <button class="ui olive basic button" ><a href="${pageContext.request.contextPath}/">Cancelar</a></button>

                                                <button class="ui olive basic button" type="submit" >Salvar</button>
                                            </div>
                                        </div>
                                </div>
                                <%@include file="../home/footer.jsp" %>    
                        </form>            
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"/>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"/>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/home.js"/>
    </body>
</html>
