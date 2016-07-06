<?php
/**
* Template Name: Team
*/
get_header("equipo");
?>
<!-- Contact us -->
<div class='contact-container' id='contact-section'>
	<div class='inner-contact'>
		<div class='container'>
			<div class='row'>
				<div class='col-sm-12 contact'>
					<br><h3>Contact Us</h3>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra odio ac felis iaculis cursus aliquet quis orci. Nunc id lorem ut mi euismod accumsan.
					</p>
				</div>
			</div>
			<div class='row'>
				<div class='col-sm-7 form-group contact-form'>
					<h4>Send Message</h4>
					<div class=""><span id='aviso-enviado'> Your message has been sent. We will contact you soon. <img src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/mensaje.png" alt=""></span></div>
					<form action='http://themebootstrap.net/primes-v1.5.1/template-08/assets/contact.php' method='post'>
						<input type="hidden" id="url" value="<?php echo get_stylesheet_directory_uri() ?>/inc/contacto-mail.php">
						<input class='form-control contact-email' id='email'  name='email' placeholder='Email' type='text'>
						<span class="msj" id="msjmail">You must input a valid email address.</span>
						<input class='form-control contact-subject' id="asuntos" name='asuntos' placeholder='Subject' type='text'>
						<span class="msj" id="msjasuntos">You must input the message subject.</span>
						<textarea class='form-control' id="mensaje" name='mensaje' placeholder='Message'></textarea>
						<span class="msj" id="msjconsulta">You must write a message.</span>
						<input type="button" id="enviar" class="btn btn-contact boton" name="enviar" value="Enviar">
					</form>
				</div>
				<div class='col-sm-5 contact-address contact-about'>
					<h4>About Us</h4>
					<p>Fusce at leo eros. Morbi mauris arcu, eleifend sit amet turpis ac, porta luctus neque. Etiam ultricies ac augue a venenatis. Quisque aliquam odio eu magna sodales, vel interdum erat suscipit. Mauris ut porttitor tellus. Integer ac bibendum lectus. Quisque interdum aliquam felis vel volutpat. Vivamus commodo felis quis dui pharetra, ac venenatis magna lacinia. Vestibulum quis dignissim nibh. Duis vitae felis orci. Aliquam porta interdum feugiat. Ut ac varius nibh. Nullam est nisl, sagittis sed risus vel, facilisis commodo tortor. Suspendisse suscipit tellus vitae tellus porta rutrum. Proin ac orci auctor, consequat dolor nec, scelerisque nisl.</p>
					<h4>Address</h4>
					<p><i class='fa fa-map-marker'></i>13 Brant Street, Burlington, Ontario, Canada
					</p>
					<p><i class='fa fa-phone'></i>Phone: 0011 222 335 7773
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<?php
get_footer();
?>