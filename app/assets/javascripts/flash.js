$(document).ready(function() {
	// Hide Flash after 5s
    function animateFlash() {
        $(`#flash div.alert div.progress-bar:first`).animate({
            'width': 0,
        }, 7000, function() {
            $(`div#flash`).animate({
                'opacity': 0,
            }, 7000, function() {
                $(`div#flash`).hide();
            });
        });
    }
    animateFlash();
});