<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>	
<body>
<%@ include file="../plantillas/header.jsp"%>
<h4 style="text-align: center; margin-top: 150px;">AÑADIR RECETA</h4>
<div class="container" style="margin-top: 50px;">
<div class="jumbotron jumbotron-fluid, img-rounded" style="border-radius:22px; height: 500px; background: #4caf50">
<form action="addReceta1" method="post">
<div class="form-group">
<label>Elige la categoría:</label>
<select class="form-control" name="idcategoria" required>
<c:forEach var="c" items="${listarCategorias }">
<option name="idcategoria" value="${c.id }">${c.nombre }</option>
</c:forEach>
</select>
</div>
<div class="form-group">
<label>Ponle el título:</label>
<input type="text" name="titulo" class="form-control" placeholder="titulo" required>
</div>
<div class="form-group">
<label>Escrite la receta:</label>
<textarea name="descripcion" class="form-control" placeholder="receta" required></textarea>
</div>
<div class="form-group">
<label>Añade una foto una foto:</label>
<input type="file" name="foto" class="form-control" required>
</div>
</form>
</div>
</div>



<%@ include file="../plantillas/footer.jsp"%>
</body>
</html>