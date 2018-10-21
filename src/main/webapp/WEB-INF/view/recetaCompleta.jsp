<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Receta de ${receta.titulo} | La Receta de la Abuela</title>
<%@ include file="../plantillas/head.jsp"%>
</head>

<body>
	<%@ include file="../plantillas/header.jsp"%>


<div class="container-fluid">
			
	<div class="row">
		<%@ include file="../plantillas/categorias.jsp"%>
		<div class="col-md-9">
			<div class="row">
				<div class="container" style="text-align: center; padding-bottom: 2%; margin-left: -10%;">
				<h1>Receta de ${receta.titulo}</h1>
			</div>
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
						Ingredientes (4 personas)
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