<%-- 
    Document   : header
    Created on : 21/05/2019, 18:42:33
    Author     : david027
--%>
<div class="ui grid stackable">
    <div>
        <div className="navbar-header" class="col-2">
            <a href='${pageContext.request.contextPath}' class="navbar-brand">
                <img src="${pageContext.request.contextPath}/css/seja-bem-vindo-png-.png" width=50% height=50%>
            </a>
        </div>

        <div  ui right  width=30% height=30%> 
           <button class="ui right olive basic button sair marginTop" >
            <a href="${pageContext.request.contextPath}/sair">
                SAIR
            </a>
        </button>     
        </div>
    </div>
    <div class="fifteen wide column">   
        <div class="ui divider"></div>
    </div>  
</div>  
