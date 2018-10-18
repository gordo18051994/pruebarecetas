<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>

<body>
	<div class="container-fluid">
	<%@ include file="../plantillas/header.jsp"%>
	<section class="container" style="max-width: 25%; float: left;">
		<ul style="list-style: none;">
			<c:forEach var="r" items="${listarCategorias}">
				<li  style="text-align: center; padding: 5%;text-decoration: none;	"><h3><a class="categoria" href="">${r.nombre}</a></h3></li>
			</c:forEach>
		</ul>
	</section>
	</div>
	
	<div style="" class=""></div>
	
	</body>
	</html>