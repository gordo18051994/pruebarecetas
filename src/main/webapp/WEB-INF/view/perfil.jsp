<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.example.demo.model.Usuario"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>	
<body>
	<%@ include file="../plantillas/header.jsp"%>
	<div class="container">
	<div class="jumbotron jumbotron-fluid, img-rounded" style="border-radius:22px; height: 350px;">
	<div class="container">
  	<div  style="background: #3F729B;  margin-left: 0px; width: 300px; height: 200px;border-radius:22px;float: left"></div>
  	<div  style="background:#bbdefb;margin-left:400px; margin-right: 0px;width:600px;height:200px; border-radius:22px;">
  	<br>
  	<br>
  	<h3 style="margin-left:50px;"><%=u.getUsuario() %></h3>
  	<br>
  	<h5 style="margin-left: 50px;"><%=u.getEmail() %></h5>
  	</div>
  	</div>
</div>
<div class="container">
<div class="container" style="float:left;">
<div  type="button" class="btn btn-default" id="MisRecetas" style=" margin-left: 200px;width: 150px; height: 40px; text-align: center;" value="Mis Recetas">Mis Recetas </div>
<br>
<br>
<div class="scrollspy" data-spy="scroll" data-target="#MisRecetas" data-offset="0" style="background: #ffffff; width: 300px; height: 400px; overflow-y: scroll; margin-left: 125px;">
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
</div>
<br>
<br>
</div>
<div class="container" style="margin-left: 350px; margin-rigth: 300px;">
<div  type="button" class="btn btn-default" id="MisRecetas" style="width: 150px; height: 40px; text-align: center;" value="Mis Recetas">Mis Recetas </div>
<br>
<br>
<div class="scrollspy" data-spy="scroll" data-target="#MisRecetas" data-offset="0" style="background: #ffffff;margin-right:300px; width: 300px; height: 400px; overflow-y: scroll;">
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
  <h6 id="panel1" class="font-weight-bold" style="text-align: center">section1</h6>
</div>
<br>
<br>
</div>
</div>

</div>
	<%@ include file="../plantillas/footer.jsp"%>
</body>
</html>