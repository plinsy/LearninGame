//paste this code under the head tag or in a separate js file.
// Wait for window load
$(window).load(function() {
    function loadPage() {
        //Check if the current URL contains '# or hash'
        if (document.URL.indexOf("#") == -1) {
            // Set the URL to whatever it was plus "#loaded".
            url = document.URL + "#";
            location = "#";
            //Reload the page using reload() method
            location.reload(true);
        }

        // Animate loader off screen
        $(".se-pre-con").fadeOut("slow");
    }
});