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
		<div class="col-md-3">
		<section class="container" style="max-width: 100%; margin-left: 0px;">
			<ul style="list-style: none;">
				<c:forEach var="c" items="${listarCategorias}">
					<li style="text-align: left; padding: 5%; text-decoration: none;"><h3>
							<a class="categoria" href="">${c.nombre}</a>
						</h3></li>
				</c:forEach>
			</ul>
		</section>
		</div>
		<div class="col-md-9">
		
		<div class="container-fluid" >		
			<div class="row">
			<div class="col-md-8">
			
			<div class="jumbotron" style="">
							<h1 class="display-6" style="text-align: center;">Receta de ${receta.titulo}</h1>
							<hr class="my-4">
							<center><div class="btn-group" role="group" aria-label="">
								<a class="" style="margin-right: 10%;" href="#"><button	type="button" class="btn btn-warning btn-lg">★ FAVORITO</button></a> 
								<a class="" href="#"><button type="button"	class="btn btn-warning btn-lg">✉ COMPARTIR</button></a>
							</div></center>
							<hr class="my-4">
									<center><img alt="" src="${receta.imagen}" height="550" width="650"></center>
								
							
							<p class="lead">
							
							</p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="container">		
			<div class="jumbotron" style="margin-top: 39%">
							<h3 class="display-6" style="text-align: ">Ingredientes:</h3>
							<hr class="my-4">
									<c:forEach var="c" items="">
								<! -- AQUI VAN LOS INGREDIENTES CARGADOS DE LA BASE DE DATOS -- />

									</c:forEach>
							
							
			</div>
		</div>
		
		</div>
		
		<div class="container">
		<div class="jumbotron" style="margin-top: 39%">
							<h3 class="display-6" style="text-align: ">Elaboración:</h3>
							<hr class="my-4">
							<h5 class="" style="text-align: ">${receta.descripcion}</h5>
									
							
							
			</div>
		
		</div>
		
		</div>
		</div>
	
		
		
		</div>		
		</div>
	</div>
		<%@ include file="../plantillas/footer.jsp"%>
	
</body>
</html>