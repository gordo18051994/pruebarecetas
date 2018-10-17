<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp" %>
<body>
<%@ include file="../plantillas/header.jsp" %>
	<div class="container" id="conRegistro">
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<div class="card card-signin my-5">
					<div class="card-body">
						<h5 class="card-title text-center">Registro</h5>
						<form class="form-signin" method="POST" action="/registrar">
							<div class="form-label-group">
								<input type="email" id="inputEmail" name="email" class="form-control"
									placeholder="Email address" required autofocus> <label
									for="inputEmail">Correo electrónico</label>
							</div>
							<div class="form-label-group">
								<input type="text" id="inputUser" name="usuario" class="form-control"
									placeholder="Nombre de usuario" required autofocus> <label
									for="inputUser">Usuario</label>
							</div>
							<div class="form-label-group">
								<input type="password" id="inputPassword" name="password" class="form-control"
									placeholder="Password" required> <label
									for="inputPassword">Password</label>
							</div>

							<button class="btn btn-lg btn-primary btn-block text-uppercase"
								type="submit">Sign Up</button>

							<hr class="my-4">
							<p>${mensaje}</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>