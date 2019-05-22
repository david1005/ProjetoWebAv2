<%-- 
    Document   : nav
    Created on : 21/05/2019, 18:42:45
    Author     : david027
--%>

<div>
        <div class="ui inverted menu">
        <div class="ui inverted segment" style="font-weight:bolder;color:white;">
            CADASTRAR
            <div class="ui inverted secondary" >
                <a href="${pageContext.request.contextPath}/cliente/new" class="item">Clientes</a>
                <a href="${pageContext.request.contextPath}/chamado/new" class="item">Chamados</a>
               
            </div>
        </div>
                
        <!--div class="item" style="font-weight:bolder;color:black">
            <a href="${pageContext.request.contextPath}/agenda/new">AGENDAR CHAMADO</a>
        </div-->
        </div>
        <div class="ui inverted menu">
        <div class="ui inverted segment" style="font-weight:bolder;color:white;">
            LISTAR 
            
            <div class="ui inverted secondary">
                <a href="${pageContext.request.contextPath}/cliente/list" class="item">Clientes</a>
                <a href="${pageContext.request.contextPath}/chamado/list" class="item">Chamados</a>                
            </div>
        </div>
    </div>
    
</div>
