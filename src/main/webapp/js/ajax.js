var init = function() {
	
	$.post('/categoriasAjax', function(categorias) {
		for(i = 0; i < categorias.length; i++) {
		$("#categorias").append('<div class="col-md-4" style="margin-top:5%; margin-bootom: 5%;" ><img src="images/'+ categorias[i].nombre +'.jpg" style="width: inherit;"><a style="font-size: 30px; width: inherit;" type="button" href="recetasCategoria?id_categoria=' + categorias[i].id + '" class="btn btn-lg btn-success active">'+ categorias[i].nombre+'</a></div>')
		}
	})
	
	var facebookSpan = $('#facebookSpan');
	facebookSpan.mouseover(function() {
		$("#facebook").addClass("mdi-spin");
	})
	facebookSpan.mouseout(function() {
		$("#facebook").removeClass("mdi-spin");
	})
	
	var instagram = $('#instagramSpan');
	instagram.mouseover(function() {
		$("#instagram").addClass("mdi-spin");
	})
	instagram.mouseout(function() {
		$("#instagram").removeClass("mdi-spin");
	})
	
	var twitter = $('#twitterSpan');
	twitter.mouseover(function() {
		$("#twitter").addClass("mdi-spin");
	})
	twitter.mouseout(function() {
		$("#twitter").removeClass("mdi-spin");
	})
	
	var google = $('#googleSpan');
	google.mouseover(function() {
		$("#google").addClass("mdi-spin");
	})
	google.mouseout(function() {
		$("#google").removeClass("mdi-spin");
	})
	

	
	
		var ingredientes = [];
	
	$.post('/buscarIngrediente', function(data) {
		for(i = 0; i < data.length; i++) {
			debugger;
			ingredientes.push(data[i].nombre);
		}
	})
	$( "#tags" ).autocomplete({
	      source: ingredientes
	    });
	
		
}

$().ready(init); 