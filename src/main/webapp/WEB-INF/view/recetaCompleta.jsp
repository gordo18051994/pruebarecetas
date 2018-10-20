<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>

<body>
	<%@ include file="../plantillas/header.jsp"%>


<div class="container-fluid">
			<div class="container" style="text-align: center; padding-bottom: 2%;">
				<h1>Receta de ${receta.titulo}</h1>
			</div>
	<div class="row">
		<div class="col-md-3" id="lateralCategorias">	
		<div class="" style="">
							<h2 class="display-6" style="text-align: left: ;">Categorías:</h2>
							<hr class="my-4">	
		<section class="container" style="max-width: 100%; margin-left: 0px;">
			<ul style="list-style: none; ">
				<c:forEach var="c" items="${listarCategorias}">
					<li style="text-align: left; padding: 5%; text-decoration: none;"><h3>
							<a class="categoria" href="/recetasCategoria?id_categoria=${c.id }">${c.nombre}</a>
						</h3></li>
				</c:forEach>
			</ul>
		</section>		
		</div>
		</div>
		<div class="col-md-9">
			<div class="row">
			
				<div class="col-md-8">
					
					<div class="row">
						<div class="col-md-9">
									<center><img alt="" src="${receta.imagen}" height="477" width="848"></center>
													<hr class="my-4">
						
						</div>
						
						<div class="col-md-3">
						</div>
					</div>
					<h5>
							Usuario
					</h5>
					<p>
							${receta.tablaUsuario.usuario}
					</p>

					<div class="btn-group" role="group" aria-label="">
								<a class="" style="margin-right: 10%;" href="#"><button	type="button" class="btn btn-warning btn-lg">❤ FAVORITO</button></a> 
								<a class="" href="#"><button type="button"	class="btn btn-warning btn-lg">✉ COMPARTIR</button></a>
							</div>
							<hr class="my-4">							
				</div>
				<div class="col-md-4">
					<h2>
						Ingredientes
					</h2>
					<hr class="my-4">
					<c:forEach var="c" items="${recetaCompleta}">
										<ul>
											<h4><li id ="idingrediente" value="${c.tablaIngredientes}">${c.tablaIngredientes.nombre}</li></h4>
										</ul>

									</c:forEach>
				</div>
			</div>
			
			<h3>
				Elaboración
			</h3>
			<p><h5 class="" style="">
				${receta.descripcion}
			</p></h5>
							<hr class="my-4">			
			
			<div class="row">
		
				<c:forEach var="r" items="${recetasRandom}">
					<div class="col-md-4">
				
				<div class="card">
						<h5 class="card-header" style="text-align: center;">
							${r.titulo}
						</h5>
						<div class="card-body">
							<p class="card-text">
								<center><a href="/receta?id_receta=${r.id}"><img alt="" height="230"
								width="370" src="${r.imagen}"></a></center>
							</p>
						</div>
						<div class="card-footer">
							<center><a href="/receta?id_receta=${r.id}" ><button type="button" class="btn btn-warning btn-lg">Ver Receta</button></a></center>

						</div>
					</div>
				</div>
				</c:forEach>	
					
				</div>
				
				
			</div>
		</div>
	</div>

		<%@ include file="../plantillas/footer.jsp"%>

</body>
</html>