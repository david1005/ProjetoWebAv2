<%-- 
    Document   : atualizaCliente
    Created on : 21/05/2019, 19:49:54
    Author     : david027
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Cliente</title>
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
                        <h2 class="ui header center aligned">Atualizar Cliente</h2>
                        <form action="${pageContext.request.contextPath}/cliente/update" method="post" class="ui form">
                            <input type="hidden" name="cliente.id" value="${cliente.id}"/>
                            
                            <div class="field">
                                <div class="fields">
                                    <div class="nine wide field">
                                        <label>Nome</label>
                                        <input type="text" name="cliente.name" value="${cliente.name}" value="${cliente.name}" maxlength="255" placeholder="Ex: Leoanardo Pereira" required>
                                    </div>
                                    
                                    <div class="five wide field">
                                        <label>CPF</label>
                                        <input type="text" name="cliente.cpf" value="${cliente.cpf}" placeholder="Ex: 999.999.999-09">
                                    </div>
                                </div>
                            </div>		
                            <h4 class="ui dividing left aligned header info">Informações de Contato</h4>
                            <div class="fields">
                                <div class="eight wide field">
                                    <label>Email</label>
                                    <input type="text" name="cliente.email" value="${cliente.email}" placeholder="Ex: fjn@gmail.com" required>
                                </div>
                                <div class="eight wide field">
                                    <label>Telefone</label>
                                    <input type="text" name="cliente.phone" value="${cliente.phone}" placeholder="Ex: 999999999" required>
                                </div>
                            </div>
                            <h4 class="ui dividing left aligned header info">Informações de Endereço</h4>
                            <div class="fields">
                                <div class="ten wide field">
                                    <label>Rua</label>
                                    <input type="text" name="cliente.endereco.rua" value="${cliente.endereco.rua}" placeholder="Ex: Jujuba de ouro" required>
                                </div>
                                <div class="three wide field">
                                    <label>Número</label>
                                    <input type="text" name="cliente.numero" value="${cliente.numero}" placeholder="Ex: 111A" required>
                                </div>
                                <div class="five wide field">
                                    <label>Cep</label>
                                    <input type="text" name="cliente.cep" value="${cliente.cep}" placeholder="Ex: 63180-00" required>
                                </div>
                                <div class="five wide field">
                                    <label>Bairro</label>
                                    <input type="text" name="cliente.bairro" value="${cliente.bairro}" placeholder="Ex: Joao cabral" required>
                                </div>
                                <div class="five wide field">
                                    <label>Cidade</label>
                                    <input type="text" name="cliente..cidade" value="${cliente.cidade}" placeholder="Barbalha" required>
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
        <%@include file="../home/footer.jsp" %>   
    </body>
</html>
