$(document).ready(function (){
	$('#author').val("");
	$('#email').val("");
	$('#comment').val("");
	$('#submit').click(function (){
		var author = $('#author').val();
		var mail = $('#email').val();
		var comentario = $('#comment').val().trim();
		/*console.log('ss'+mail);*/
/*		if((mail.indexOf ('@', 0) == -1) || (mail.indexOf ('.', 0) == -1) ||(mail.length < 5)){*/
		var expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if(comentario == ""){
			event.preventDefault();
			$('#msjcomentario').css({
				'color': "#FD6868",
				'display': "none"
			});
			$('#msjcomentario').fadeIn(1000);
			$('#msjcomentario').css({
				'display': "block"
			});
		}
		else if (author == ""){
			event.preventDefault();
			$('#author').focus();
			$('#msjauthor').css({
						'color': "#FD6868",
						'display': "none"
			});
			$('#msjauthor').fadeIn(1000);
			$('#msjauthor').css({
				'display': "block"
			});
		}
		else if (!expr.test(mail)){
			event.preventDefault();
			$('#email').focus();
			$('#email').val("");
			$('#msjmail').css({
				'color': "#FD6868",
						'display': "none"
			});
			$('#msjmail').fadeIn(1000);
			$('#msjmail').css({
				'display': "block"
			});
		}
	});

	//para borrar mensajes de advertencia
	$('#author').keyup(function(){
		$('#msjauthor').fadeOut(1000);
	});
	$('#email').keyup(function(){
		$('#msjmail').fadeOut(1000);
	});
	$('#comment').keyup(function(){
		$('#msjcomentario').fadeOut(1000);
	});
});
