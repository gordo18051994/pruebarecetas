var init = function() {
	
	$.post('/categoriasAjax', function(categorias) {
		for(i = 0; i < categorias.length; i++) {
		$("#categorias").append('<div class="col-md-4" style="margin-top:5%; margin-bootom: 5%;" ><a type="button" href="/recetas/' + categorias[i].id + '" class="btn btn-lg btn-success active">'+ categorias[i].nombre+'</a></div>')
		}
	})
}

$().ready(init); 