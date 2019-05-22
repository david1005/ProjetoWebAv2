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
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container"> 
    <form>    
    <h3 class="text-center text-body">Cadastro</h3>
    <div class="form-group">
         <label class="col-md-2 control-label" for="Nome">Nome</label>  
    <div class="col-md-8">
         <input id="Nome" name="nome"  class="form-control  input-md" placeholder="Ex: Joao Ferreira" type="text">
    </div>
    </div>
    <div>
        <label class="col-md-2 control-label" for="prependedtext">Telefone</label>
    <div class="col-md-2">
    <div class="input-group">
       <input id="prependedtext" name="prependedtext" class="form-control" placeholder="(DDD) xxxxx-xxxx"  type="text">
    </div>
    </div>
    </div>
    <div>
       <label class="col-md-1 control-label" for="prependedtext">Email</label>
    <div class="col-md-5">
    <div class="input-group">
       <input id="prependedtext" name="prependedtext" class="form-control" placeholder="email@email.com" type="text" >
    </div>
    </div>
    </div>
       <label class="col-md-1 control-label" for="usuario">Usuário</label>  
    <div class="col-md-4">
       <input id="usuario" name="usuario" type="text" class="form-control input-md" placeholder="JoaoF">    
    </div>
       <label class="col-md-1 control-label" for="senha">Senha</label>  
    <div class="col-md-4">
       <input id="senha" name="senha" type="password" class="form-control input-md" placeholder="*********">
    </div>
    <br>
    <div >
    <div class="col-md-8">
         <button id="Cadastrar" name="Cadastrar" class="btn btn-success" type="Submit">Cadastrar</button>
         <button id="Cancelar" name="Cancelar" class="btn btn-danger" type="Reset">Cancelar</button>
   </div>
   </div>
   </form>
   </div>
    </body>
</html>
