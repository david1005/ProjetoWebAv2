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
        <link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet">
        <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css/main.css">
<!--===============================================================================================-->
    </head>
    <body>
        
        
        <div class="limiter">
		<div class="container-login100" style="background-image: url('${pageContext.request.contextPath}/css/images/suporte-tecnico.png');">
			<div class="wrap-login100 p-t-30 p-b-50">

				<form class="login100-form validate-form p-b-33 p-t-5" action="${pageContext.request.contextPath}/login" method="post" >
                                    <div class="input" >                                         
                                     <h5 style="color: red; border-bottom: 2px;">${mensagem}</h5>
                                    </div>
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" id="userName" name="user.userName" placeholder="Usuário">						
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="user.password"  id="senha" placeholder="Senha">					
					</div>                                                                            
					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							Login
						</button>

						<div class="container-login102-form-btn m-t-32">
							 <p class="text-center small">Não tem uma conta?<a href="${pageContext.request.contextPath}/registrar"> Cadastrar-se</a></p>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
     
        
        <!--
         <div align="center">
                <h5 style="color: red; border-bottom: 2px;">${mensagem}</h5>
            </div>
        <div id="login">
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <form id="login-form" class="form" action="${pageContext.request.contextPath}/login" method="post">
                                <h3 class="text-center text-body">Login</h3>
                                <div class="form-group">
                                    <label for="userName" class="text-secondary">Usuário:</label><br>
                                    <input type="text" name="user.userName" id="userName" value="${user.userName}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="password" class="text-secondary">Senha:</label><br>
                                    <input type="password" name="user.password" value="${user.password}" id="senha" class="form-control">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">Entrar</button>
                                </div>
                                <p class="text-center small">Não tem uma conta?<a href="${pageContext.request.contextPath}/registrar"> Cadastrar-se</a></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div-->
           <!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/css/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/css/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/css/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/css/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/css/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/css/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/css/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/css/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/css/js/main.js"></script>
                 
    </body>
   
</html>
