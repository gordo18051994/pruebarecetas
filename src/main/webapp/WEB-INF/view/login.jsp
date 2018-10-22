<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp" %>

<body>
<%@ include file="../plantillas/header.jsp" %>
<div class="container" id="conLogin">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Inicia Sesión</h5>
            <form class="form-signin" method="POST" action="/logear">
              <div class="form-label-group">
                <input type="email" id="emailLogin" class="form-control" name="email" placeholder="Email address" required autofocus>
                <label for="emailLogin">Correo electronico</label>
              
                
              </div>
              <label id="mensaje"></label>

              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
                <label for="inputPassword">Contraseña</label>
               <div id="emailIncorrecto"  class="alert alert-danger" style="margin-top: 5%;">Credenciales incorrectas.</div>
                
              </div>



              <button class="btn btn-lg btn-primary btn-block text-uppercase" id="btnLogin1" type="">Entrar1</button>

              <a class="btn btn-lg btn-primary btn-block text-uppercase"  href="/registro" type="button">Registrarse</a>
              <hr class="my-4">
              
            </form>
                          <button class="btn btn-lg btn-primary btn-block text-uppercase" id="btnLogin" type="">Entrar</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>