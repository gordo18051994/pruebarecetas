<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>

<body>
	<%@ include file="../plantillas/header.jsp"%>
	<div class="container-fluid">
		<section class="container" style="max-width: 25%; float: left;">
			<ul style="list-style: none;">
				
					<li style="text-align: left; padding: 5%; text-decoration: none;"><h3>
							<p><a class="categoria" href="/misRecetas">Mis Recetas</a>
							<p><a class="categoria" href="/añadirReceta">Añadir Receta</a>
							<p><a class="categoria" href="">Recetas Favoritas</a>
							</h3></li>
			</ul>
		</section>
		
		
		<div class="container-fluid" style="padding-left: 5%;">
			<div class="row">
				<c:forEach var="r" items="${misrecetas}">
					<div class="col-md-4" style="height: 100%;">
						<div class="jumbotron" style="padding-bottom: 5%; padding-top: 5%">
							<h3 class="display-6" style="text-align: center; height: 65px;">${r.titulo}</h3>
							<hr class="my-6">
							<a href="/receta?id_receta=${r.id}"><img alt="" height="230"
								width="370" src="${r.imagen}"></a>
								<input type="hidden" value="${r.tablaCategoria.nombre }">
								<input type="hidden" value="${r.tablaUsuario.usuario }">
							<hr class="my-4">
							<div class="btn-group" role="group" aria-label="">
								<a class="" style="margin-right: 20%;" href="/actualizarReceta?id_receta=${r.id}"><button
										type="button" class="btn btn-warning btn-lg">✎</button></a> <a
									class="" style="margin-right: 20%;"
									href="/receta?id_receta=${r.id}"><button type="button"
										class="btn btn-warning btn-lg">VER RECETA</button></a> <a
									class="" href="/borrarReceta?id_receta=${r.id}"><button type="button"
										class="btn btn-warning btn-lg">🗑️</button></a>
							</div>
							</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		
		
	</div>
	<%@ include file="../plantillas/footer.jsp"%>
	 <!-- JQuery -->
  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
</body>
</html>