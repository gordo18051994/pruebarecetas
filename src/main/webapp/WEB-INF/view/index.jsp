<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>

<body>
	<%@ include file="../plantillas/header.jsp"%>
<div class="container" style="max-height: 450px;">
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active" style="max-height: 450px;">
      <img src="https://www.hola.com/imagenes/cocina/20181016131103/recetas-saludables-otono-gt/0-608-187/boniato_relleno-a.jpg" alt="Los Angeles">
    </div>
    <div class="carousel-item" style="max-height: 450px;">
      <img src="https://okdiario.com/img/2018/10/18/cupcakes-de-chocolate-sin-horno-655x368.jpg" alt="Chicago">
    </div>
    <div class="carousel-item" style="max-height: 450px;">
      <img src="https://www.hogarmania.com/archivos/201805/pan-especiado-vertical-XxXx80.jpg" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>
</div>
	<%@ include file="../plantillas/footer.jsp"%>
</body>
</html>