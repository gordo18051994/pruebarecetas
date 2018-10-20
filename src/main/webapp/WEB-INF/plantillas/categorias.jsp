<div class="col-md-3" id="lateralCategorias">
	<div class="" style="position: fixed; margin-top: -30px;">
		<h2 class="display-6" style="text-align: left:;">Categorías:</h2>
		<hr class="my-4">
		<section class="container" style="max-width: 100%; margin-left: 0px;">
			<ul style="list-style: none;">
				<c:forEach var="c" items="${listarCategorias}">
					<li style="text-align: left; padding: 5%; text-decoration: none;"><h3>
							<a style="text-decoration: none;" class="categoria"
								href="/recetasCategoria?id_categoria=${c.id }">${c.nombre}</a>
						</h3></li>
				</c:forEach>
			</ul>
		</section>
	</div>
</div>