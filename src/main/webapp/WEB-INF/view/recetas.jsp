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
				<c:forEach var="c" items="${listarCategorias}">
					<li style="text-align: center; padding: 5%; text-decoration: none;"><h3>
							<a class="categoria" href="">${c.nombre}</a>
						</h3></li>
				</c:forEach>
			</ul>
		</section>
		<div class="container-fluid" style="padding-left: 5%;">
			<div class="row">
				<c:forEach var="r" items="${listarRecetas}">

					<div class="col-md-4">
						<div class="jumbotron" style="padding-bottom: 5%; padding-top: 5%">
							<h3 class="display-6" style="text-align: center;">${r.titulo}</h3>
							<hr class="my-6">							
							<img alt="" height="230" width="370"
								src="https://static.hogarmania.com/archivos/201810/ensalada-rucula-xl-848x477x80xX.jpg">
							<hr class="my-4">
							<p class="lead">
							<div class="btn-group" role="group" aria-label="">
								<a class="" style="margin-right: 10%;" href="#"><button type="button" class="btn btn-warning btn-lg">★</button></a>
								<a class="" style="margin-right: 10%;" href="/receta?id_receta=${r.id}"><button	type="button" class="btn btn-warning btn-lg">RECETA COMPLETA</button></a>  
								<a class="" href="#"><button type="button" class="btn btn-warning btn-lg">✉</button></a>
							</div>
							</p>
						</div>
						
						
					</div>
				</c:forEach>
			</div>
		</div>

	</div>










	</div>
</body>
</html>