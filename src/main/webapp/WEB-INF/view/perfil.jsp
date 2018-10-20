<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.example.demo.model.Usuario"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>	
<body>
	<%@ include file="../plantillas/header.jsp"%>
	<div class="container">
	<div class="jumbotron jumbotron-fluid, img-rounded" style="border-radius:22px; height: 350px; background: #a5d6a7">
	<div class="container">
  	<div  style="margin-left: 0px; width: 300px; height: 200px;float: left"><img style="width: 200px; height: 200px;margin-left:100px;border-radius:22px; border:5px;border-color: #90caf9" src="images/granny.jpg"></div>
  	<div  style="background:#ffffff;margin-left:400px; margin-right: 0px;width:600px;height:200px; border-radius:22px;">
  	<br>
  	<br>
  	<h3 style="margin-left:50px;"><%=u.getUsuario() %></h3>
  	<br>
  	<h5 style="margin-left: 50px;"><%=u.getEmail() %></h5>
  	</div>
  	<a href="/añadirReceta" ><input type="button" class="btn btn-success" style="margin-top: 30px; margin-left: 130px; color: black;" value="Añadir Recetas"></a>
  	<a href=""><input type="button" class="btn btn-success" style="margin-top: 30px; margin-left: 200px; color: black;" value="Borrar Receta"></a>
  	<a href=""><input type="button" class="btn btn-success" style="margin-top: 30px; margin-left: 220px; color: black;" value="Actualizar Receta"></a>
  	</div>
</div>

<div class="continer" style="margin-left: 100px; float:left;" id="recetasFavoritas">
<input  type="button" class="btn btn-success" id="RecetasFavoritas" style="margin-left: 70px; width: 150px; height: 40px; text-align: center;" value="RecetasFavoritas"></input>

</div>



<div class="container" style="margin-left: 600px;" id="recetasUsuario">
<input  type="button" class="btn btn-success" id="MisRecetas" style="margin-left: 60px; width: 150px; height: 40px; text-align: center;" value="Mis Recetas"></input>

</div>



</div>
<br>
<br>
<br>
<br>
	<%@ include file="../plantillas/footer.jsp"%>
</body>
</html>