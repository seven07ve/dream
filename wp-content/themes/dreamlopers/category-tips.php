<?php
/**
* Template Name: Portfolio
*/
get_header("tips");
?>
<!-- Top Primera -->
<div class='parallax top-content tips-bg' data-stellar-background-ratio='0.3' id='home'>
	<div class='inner-bg'>
		<div class='container'>
			<div class='row'>
				<div class='col-md-12 top-description'>
					<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dreamlopers_tips.png" alt="" />
					<br>
					<br>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="pestanas">
	<a href="<?php echo get_site_url()."/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-aspirantes.png" class="img-responsive" alt="Image"></a><br>
	<a href="<?php echo get_site_url()."/en/category/news/"; ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pestana-news.png" class="img-responsive" alt="Image"></a>
</div>
<!--portfolio -->
<div class='pricing-container container'>
	<div id='tips' style='margin-top: 50px;'>
		<div class='container'>
			<div class='row'>
				<div class='col-xs-12 text-center'>
					<h1>Tips</h1>
				</div>
			</div>
		</div>
		<div class='listados' id='talleres'>
			<a class='item' href='http://lionessmagazine.com/5-quick-strategies-to-help-entrepreneurs-shift-from-hobbyists-to-business-owners/' target='blank' title='How to Transition from Hobbyist to Business Owner'>
				<div class='tapita'>
				<div class="tabs">
					
				</div>
					<h4>5 Quick Strategies To Help Entrepreneurs Shift From Hobbyists To Business Owners</h4>
				</div>
				<img alt='How to Transition from Hobbyist to Business Owner' src='http://lionessmagazine.com/wp-content/uploads/2015/05/hobby.jpg'>
				<div id='info'>
					<div id='titulo'>5 Quick Strategies To Help Entrepreneurs Shift From Hobbyists To Business Owners</div>
					<div id='resumen'>Making money from your hobby is not synonymous with having a business. Unfortunately, far too many people don’t understand that...</div>
				</div>
			</a>
			<a class='item' href='http://www.creativebloq.com/mobile/25-web-development-tips-boost-your-skills-10126001' target='blank' title='5 web development tips to boost your skills'>
				<div class='tapita' style=" background-image:url('http://media.creativebloq.futurecdn.net/sites/creativebloq.com/files/images/2012/10/gitlab.jpg')">
					<h4>25 web development tips to boost your skills</h4>
				</div>
				<img alt='5 web development tips to boost your skills' src='http://media.creativebloq.futurecdn.net/sites/creativebloq.com/files/images/2012/10/gitlab.jpg'>
				<div id='info'>
					<div id='titulo'>25 web development tips to boost your skills</div>
					<div id='resumen'>Professional developers share tips and tricks from an accumulated century of hard won experience</div>
				</div>
			</a>
			<a class='item' href='http://smallbusiness.chron.com/team-leading-35635.html' target='blank' title='How to Get to Know the Team You Are Leading'>
				<div class='tapita' style=" background-image:url('http://undercdn.under30media.netdna-cdn.com/wp-content/uploads/2013/04/Overcome-Obstacles-to-Be-A-Business-Leader.jpg?f7e559')">
					<h4>How to Get to Know the Team You Are Leading</h4>
				</div>
				<img alt='How to Get to Know the Team You Are Leading' src='http://undercdn.under30media.netdna-cdn.com/wp-content/uploads/2013/04/Overcome-Obstacles-to-Be-A-Business-Leader.jpg?f7e559'>
				<div id='info'>
					<div id='titulo'>How to Get to Know the Team You Are Leading</div>
					<div id='resumen'>A team leader’s ability to manage his team and make certain that projects are completed on time requires...</div>
				</div>
			</a>
			<a class='item' href='http://www.sitepoint.com/8-essential-skills-developers-can-learn-in-a-weekend/' target='blank' title='8 Essential Skills Developers Can Learn in a Weekend'>
				<div class='tapita' style=" background-image:url('http://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2014/07/1406858208terminal.png')">
					<h4>8 Essential Skills Developers Can Learn in a Weekend</h4>
				</div>
				<img alt='8 Essential Skills Developers Can Learn in a Weekend' src='http://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2014/07/1406858208terminal.png'>
				<div id='info'>
					<div id='titulo'>8 Essential Skills Developers Can Learn in a Weekend</div>
					<div id='resumen'>Comprende el proceso global de marketing y publicidad para poder gestionar la promocion de tu emprendimiento</div>
				</div>
			</a>
		</div>
	</div>
</div>
<script src='<?php echo get_stylesheet_directory_uri(); ?>/assets/javascripts/cube.js'></script>
<?php
get_footer();
?>