$(document).ready(function (){
	$('#enviar').click(function (){
		/*var nombre = $('#nombre').val();*/
		/*var tel = $('#tel').val();*/
		var url = $('#url').val();
		var mail = $('#email').val();
		var asuntos = $('#asuntos').val();
		var consulta = $('#mensaje').val().trim();
		/*console.log('ss'+mail);*/
/*		if((mail.indexOf ('@', 0) == -1) || (mail.indexOf ('.', 0) == -1) ||(mail.length < 5)){*/
		var expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
/*		if (nombre == ""){
			$('#nombre').focus();
			$('#msjnombre').css({
						'color': "#FD6868",
						'display': "none"
			});
			$('#msjnombre').fadeIn(1000);
			$('#msjnombre').css({
				'display': "block"
			});
		}
		else */if (!expr.test(mail)){
			$('#email').focus();
			$('#msjmail').css({
						'color': "#FFF",
						'display': "none"
			});
			$('#msjmail').fadeIn(1000);
			$('#msjmail').css({
				'display': "block"
			});
		}
		else if (asuntos == ""){
			$('#asuntos').focus();
			$('#msjasuntos').css({
						'color': "#FFF",
						'display': "none"
			});
			$('#msjasuntos').fadeIn(1000);
			$('#msjasuntos').css({
				'display': "block"
			});
		}
		else if(consulta == ""){
			$('#msjconsulta').css({
				'color': "#FFF",
				'display': "none"
			});
			$('#msjconsulta').fadeIn(1000);
			$('#msjconsulta').css({
				'display': "block"
			});
		}
		else{
			var datos = 'email='+mail+'&asunto='+asuntos+'&consulta='+consulta;
			$.ajax({
				type:'post',
				url:url,
				data:datos,
				success: function(data){
					var resp = data;
					/*$('#remitente').fadeIn(1000).html(resp);*/
					$('#aviso-enviado').fadeIn(1000);
					/*$('#nombre').val("");
					$('#tel').val("");*/
					$('#email').val("");
					$('#asuntos').val("");
					$('#mensaje').val("");
				}
			});
		}
	});

	//para borrar mensajes de advertencia
/*	$('#nombre').keyup(function(){
		$('#msjnombre').fadeOut(1000);
	});*/
	$('#email').keyup(function(){
		$('#msjmail').fadeOut(1000);
	});
	$('#asuntos').keyup(function(){
		$('#msjasuntos').fadeOut(1000);
	});
	$('#mensaje').keyup(function(){
		$('#msjconsulta').fadeOut(1000);
	});
});
