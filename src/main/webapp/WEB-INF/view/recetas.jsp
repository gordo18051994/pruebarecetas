<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>

<body>
	<%@ include file="../plantillas/header.jsp"%>
	<div class="container-fluid">
	<div class="row">
		<%@ include file="../plantillas/categorias.jsp"%>
		<div class="col-md-9">
		<div class="container-fluid" style="padding-left: 5%;">
			<div class="row">
				<c:forEach var="r" items="${listarRecetas}">

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
							<!-- SI EL USUARIO NO ESTA LOGUEADO EL BOTON FAVORITO APARECE DESACTIVADO -->
							<% u = (Usuario) session.getAttribute("usuario");%>
							<% if(u == null) { %>
								<a class="" style="margin-right: 10%;" href="/favorita?id_receta=${r.id}"><button
										type="button" class="btn btn-warning btn-lg" disabled >❤</button></a> 
							<%}else { %>			
							<!-- SI EL USUARIO HA INICIADO SESION EL BOTON FAVORITO SE PUEDE USAR-->
							<a class="" style="margin-right: 10%;" href="/favorita?id_receta=${r.id}"><button
										type="button" class="btn btn-warning btn-lg" >❤</button></a> 
							<%} %>										
										<a class="" style="margin-right: 10%;"
									href="/receta?id_receta=${r.id}"><button type="button"
										class="btn btn-warning btn-lg">RECETA COMPLETA</button></a> <a
									class="" href="#"><button type="button"
										class="btn btn-warning btn-lg">✉</button></a>
							</div>
							
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
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