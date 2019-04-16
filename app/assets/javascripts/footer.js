$( document ).on( "mousemove", function( event ) {
	// $("#log").text("pageX: " + event.pageX + ", pageY: " + event.pageY);

	// if (event.pageY > 600) {
	// 	openFooter("slow");
	// }
	// else if (event.pageY < 390) {
	// 	closeFooter("slow");
	// }
});

function openFooter() {
	$('footer:first').slideDown('slow');
}

function closeFooter() {
	$('footer:first').slideUp('slow');
}