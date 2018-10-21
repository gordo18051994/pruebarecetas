<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>

<body>
	<%@ include file="../plantillas/header.jsp"%>
<div class="container" style="height: 600px;">
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
    <li data-target="#demo" data-slide-to="4"></li>
    <li data-target="#demo" data-slide-to="5"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active" style="max-height: 600px;">
      <img style="width: 100%; height: 600px;" src="https://www.hola.com/imagenes/cocina/20181016131103/recetas-saludables-otono-gt/0-608-187/boniato_relleno-a.jpg" alt="Los Angeles">
    </div>
    <div class="carousel-item" style="max-height: 600px;">
      <img style="width: 100%; height: 600px;" src="https://okdiario.com/img/2018/10/18/cupcakes-de-chocolate-sin-horno-655x368.jpg" alt="Chicago">
    </div>
    <div class="carousel-item" style="max-height: 600px;">
      <img style="width: 100%; height: 600px;" src="https://cdnb.20m.es/sites/123/2015/12/Chuleta-de-cordero-de-leche-con-suero-de-parmesano-bu%C3%B1uelo-y-esp%C3%A1rrago-c%C3%ADtrico.jpg" alt="New York">
    </div>
    <div class="carousel-item" style="max-height: 600px;">
      <img style="width: 100%; height: 600px;" src="https://media-cdn.tripadvisor.com/media/photo-s/0d/c2/33/6a/atun-rojo-con-arroz-sushi.jpg" alt="New York">
    </div>
    <div class="carousel-item" style="max-height: 600px;">
      <img style="width: 100%; height: 600px;" src="http://gastroeconomy.com/wp-content/uploads/2015/11/Gastroeconomy-Jose-Carlos-Garcia_13.jpg" alt="New York">
    </div>
    <div class="carousel-item" style="max-height: 600px;">
      <img style="width: 100%; height: 600px;" src="https://i.blogs.es/b88a8c/sardina-chef-jose-alvarez/450_1000.jpg" alt="New York">
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
<div class="container">
	<div class="row" id="categorias"></div>
</div>
	<%@ include file="../plantillas/footer.jsp"%>
</body>
</html>