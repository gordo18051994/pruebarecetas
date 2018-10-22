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
							<p><a class="categoria" href="/recetasFavoritas">Recetas Favoritas</a>
							</h3></li>
			</ul>
		</section>
		
		
		<div class="container-fluid" style="padding-left: 5%;">
			<div class="row">
			
			<% 
			
				if (session.getAttribute("recetasFavoritas") == null) {
					%>
					<p><div style="align-content: center;"> <h2>No tienes ninguna receta marcada como favorita</h2>
					<p><h4>Mira las recetas <a href="recetas">aquí</a> y pincha en el ❤ de las que más te gusten.</h4>
					</div>
					<%
				} else {
			%>
			
				<c:forEach var="r" items="${recetasFavoritas}">
					<div class="col-md-4  shadow-lg p-3 mb-5 bg-white rounded" style="height: 100%;">
						<div class="jumbotron" style="padding-bottom: 5%; padding-top: 5%">
							<h3 class="display-6" style="text-align: center; height: 65px;">${r.tablaRecetas.titulo}</h3>
							<hr class="my-6">
							<a href="/receta?id_receta=${r.tablaRecetas.id}"><img alt="" height="230"
								width="370" src="${r.tablaRecetas.imagen}"></a>
							<hr class="my-4">
							<div class="btn-group" role="group" aria-label="">
								<a class="" style="margin-right: 20%;" href="/quitarFavorito?id_receta=${r.id}"><button
										type="button" class="btn btn-warning btn-lg">💔</button></a> <a
									class="" style="margin-right: 20%;"
									href="/receta?id_receta=${r.tablaRecetas.id}"><button type="button"
										class="btn btn-warning btn-lg">VER RECETA</button></a> 
							</div>
							</p>
						</div>
					</div>
				</c:forEach>
				<%
				}
				%>
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