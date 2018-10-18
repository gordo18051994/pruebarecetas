<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../plantillas/head.jsp"%>

<body>
<%@ include file="../plantillas/header.jsp"%>
<div class="container-fluid">
	<section class="container" style="max-width: 25%; margin-left: 0px;">
		<ul style="list-style: none;">

			<c:forEach var="c" items="${listarCategorias}">
				<li  style="text-align: center; padding: 10%;text-decoration: none;	"><h3><a class="categoria" href="">${c.nombre}</a></h3></li>

			</c:forEach>
		</ul>
	</section>
</div>
	<%@ include file="../plantillas/footer.jsp"%>
</body>
</html>