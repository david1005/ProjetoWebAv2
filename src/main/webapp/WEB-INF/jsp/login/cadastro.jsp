<%-- 
    Document   : cadastro
    Created on : 21/05/2019, 16:24:53
    Author     : david027
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        <div class="container" align="center"> 
            <form action="${pageContext.request.contextPath}/cadastrar" method="post">    
                <h3 class="text-center text-body">Cadastre-se</h3>

        </div>
        <div class="form-group" align="center">
            <div class="col-md-4">
                <input id="usuario" name="user.userName"  type="text" class="form-control input-md" placeholder="Usuário">    
            </div>

            <div class="col-md-4" align="center">
                <input id="senha" name="user.password"  type="password" class="form-control input-md" placeholder="*********">
            </div>
        </div>
        <br>
        <div align="center">
            <div class="col-md-8" >               
                <button id="Cadastrar" name="Cadastrar" class="btn btn-success" align="center" type="Submit">Cadastrar</button>                
            </div>
        </div>        
    </form>
            <div align="center">
                <h5 style="color: red; border-bottom: 2px;">${mensagem}</h5>
            </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
