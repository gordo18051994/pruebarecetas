<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>
<body>
	<%@ include file="../plantillas/header.jsp"%>
	<h4 style="text-align: center; margin-top: 100px;">AÑADIR RECETA</h4>
	<div class="container" style="margin-top: 20px;">
		<div class="jumbotron jumbotron-fluid, img-rounded"
			style="border-radius: 22px; height: 30%; background: #4caf50">
			<form action="añadirRecetaBBDD" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label>Elige la categoría:</label> <select class="form-control"
						name="idcategoria" required>
						<c:forEach var="c" items="${listarCategorias }">
							<option  value="${c.id }">${c.nombre }</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label>Ponle el título:</label> <input type="text" name="titulo"
						class="form-control" placeholder="titulo" required>
				</div>

				<div class="form-group">
					<label>Escribe la descripcion de la receta:</label>
					<textarea name="descripcion" class="form-control"
						placeholder="receta" required></textarea>
				</div>
				<label>Elige los ingredientes: </label>

				<div class="scrollspy" data-spy="scroll" data-offset="0"
					style="background: #ffffff; height: 300px; overflow-y: scroll;">
					<c:forEach var="i" items="${listarIngredientes }">
						<ul class="list-group">
							<li class="list-group-item row d-flex">
								<div class="col-2">
									<input type="checkbox" name="ingredientes" value="${i.id }">${i.nombre }</div>
									 <label>Cantidad:</label>
								<div class="col-4">
									<input type="text" placeholder="000" name="cantidad"
										style="width: 40px;">
								</div>
								<div class="col-2">
								 <label>Tipo:</label>
								  <select type="form-control" name="idMedida" required>
									<c:forEach var="m" items="${listarMedidas }">
										<option name="idmedida" value="${m.id}">${m.nombre }</option>
									</c:forEach>
							</select>
							</div>
							</li>
						</ul>
					</c:forEach>
				</div>

				<div class="form-group">
					<label>Añade una foto una foto:</label> <input type="file"
						name="file" class="form-control" >
				</div>
				<button type="submit" class="btn btn-warning btn-lg" style="margin-left: 39%; margin-top: 1.5%; padding: 2.5%; font-size: 30px; border-radius: 50px;">
					Añadir receta</button>
			</form>
		</div>
	</div>



	<%@ include file="../plantillas/footer.jsp"%>
</body>
</html>



