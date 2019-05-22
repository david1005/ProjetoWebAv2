<%-- 
    Document   : loginFun
    Created on : 21/05/2019, 13:54:54
    Author     : david027
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <!-- Links bootstrap--> 
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet">
    </head>
    <body>
        <div id="login">
        <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
        <div id="login-column" class="col-md-6">
        <div id="login-box" class="col-md-12">
            <form id="login-form" class="form" action="auth" method="post">
              <h3 class="text-center text-body">Login</h3>
              <div class="form-group">
              <label for="userName" class="text-secondary">Usuário:</label><br>
              <input type="text" name="userName" id="userName" class="form-control">
              </div>
              <div class="form-group">
              <label for="password" class="text-secondary">Senha:</label><br>
              <input type="password" name="senha" id="senha" class="form-control">
              </div>
              <div class="form-group">
                 <button type="submit" class="btn btn-primary btn-lg btn-block">Entrar</button>
              </div>
                 <p class="text-center small">Não tem uma conta?<a href="${pageContext.request.contextPath}/WEB-INF/jsp/login/cadastro.jsp"> Cadastrar-se</a></p>
            </form>
</div>
</div>
</div>
</div>
</div>
    </body>
</html>
