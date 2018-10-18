<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>

<body>
	<%@ include file="../plantillas/header.jsp"%>

	Entra en receta ${receta.titulo}


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
			<img alt="" src="">
		
		
		
		</div>
	</div>
</body>
</html>