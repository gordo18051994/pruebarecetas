var init = function() {
	
	$.post('/categoriasAjax', function(categorias) {
		for(i = 0; i < categorias.length; i++) {
		$("#categorias").append('<div class="col-md-4" style="margin-top:5%; margin-bootom: 5%;" ><img src="images/'+ categorias[i].nombre +'.jpg" style="width: inherit;"><a style="font-size: 30px; width: inherit;" type="button" href="recetasCategoria?id_categoria=' + categorias[i].id + '" class="btn btn-lg btn-success active">'+ categorias[i].nombre+'</a></div>')
		}
	})
	$("#emailIncorrecto").hide(); 
	$("#btnLogin").on('click', function(){
		var email=$("#emailLogin").val();
		var password=$("#inputPassword").val();
		$.post('/logear',{"email": email, "password": password}, function (data) {
			debugger;
			if (data.email==undefined){
				debugger;
				$("#emailIncorrecto").show();
			}else{
				debugger;
				location.href ="/";
			}
			
			 
			
		})
		
	})
	
	$("#registroIncorrecto").hide();
	$("#btnRegistro").on('click', function(){
		var usuario=$("#inputUser").val();
		var email=$("#inputEmail").val();
		var password=$("#inputPassword").val();
		$.post('/registrar',{"usuario": usuario, "email": email, "password": password}, function (data){
			debugger;
			if (data.usuario == undefined){
				debugger;
				$("#registroIncorrecto").show();
			}else{
				debugger;
				location.href="login";
			}
		})
	})
	
	
		
}

$().ready(init); 