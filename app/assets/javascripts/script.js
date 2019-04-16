$(document).ready(function() {
	$(window).scroll(function() {
if($(this).scrollTop() > 40 ) {
		$('#topbutton').fadeIn();
		$('#topbutton').addClass('fa fa-arrow-up');
	}
	else {
		$('#topbutton').fadeOut();
		$('#topbutton').removeClass('fa fa-arrow-up');
	}
	});
	$('#topbutton').click(function() {
		$('html, body').animate({scrollTop: 0}, 800)
		});
	});