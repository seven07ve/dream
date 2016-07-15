<footer id='footer2'>
	<div class='container'>
		<div class='row'>
			<div class="col-xs-12 col-sm-12 col-md-4 text-center"><?php wp_nav_menu( array('menu' => 'footer', 'container' => 'nav' )); ?></div>
			<div class='col-xs-12 col-sm-12 col-md-4'>
				<div class='copyright'>
					© <?php bloginfo('name'); ?>
					<?=date('Y');?>
					<h3>
						Follow the Dreamlopers rocket
					</h3>
					<i class='fa fa-rocket fa-3x'></i>
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-4">
				<a class='social-icon' href='https://www.facebook.com/dreamlopers'>
					<i class='fa fa-facebook facebook'></i>
				</a>
				<a class='social-icon' href='https://twitter.com/dreamlopers'>
					<i class='fa fa-twitter twitter'></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-instagram instagram" aria-hidden="true"></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-linkedin linkedin" aria-hidden="true"></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-youtube youtube" aria-hidden="true"></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-snapchat-ghost snapchat" aria-hidden="true"></i>
				</a>
				<a class='social-icon' href=''>
					<i class="fa fa-skype skype" aria-hidden="true"></i>
				</a>
			</div>
		</div>
	</div>
</footer>
</div>  <!--Fin de wrapper -->

<?php //wp_footer(); ?>
</body>
</html>