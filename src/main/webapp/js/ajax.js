var init = function() {
	
	$.post('/categoriasAjax', function(categorias) {
		for(i = 0; i < categorias.length; i++) {
		$("#categorias").append('<div class="col-md-4" style="margin-top:5%; margin-bootom: 5%;" ><a type="button" href="recetasCategoria?id_categoria=' + categorias[i].id + '" class="btn btn-lg btn-success active">'+ categorias[i].nombre+'</a></div>')
		}
	})
	
	$("#MisRecetas").on('click', function(){
		$("#recetasUsuario").append('<div class="scrollspy" data-spy="scroll" data-target="#MisRecetas" data-offset="0" style="background: #ffffff;margin-right:0px; width: 300px; height: 400px; overflow-y: scroll;"></div>');
	$.post('recetaUsuario', function(recetas) {
		for(i = 0; i < recetas.length; i++) {
			$(".scrollspy").append('<h6 id="panel'+ recetas[i].id+'" class="font-weight-bold" style="text-align: center"><a href="receta?id_receta='+ recetas[i].id+'">'+ recetas[i].titulo+'</a></h6>')
			
		}
	})
	})
}

$().ready(init); 