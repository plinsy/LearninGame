    $(document).on("mousemove", function(event) {
        // $("#log").text("pageX: " + event.pageX + ", pageY: " + event.pageY);
        if (event.pageX == 0) // When the mosue is on left
            openNav("slow"); // show the sidebar
        else if (event.pageX > 227) { // When the mouse leave the sidebar 
            closeNav("slow");
        }
    });

    /* Set the width of the side navigation to 250px */
    function openNav() {
        document.getElementById("mySidenav").style.width = "17%";
        // document.getElementById("main").style.marginLeft = "17%";
    }

    /* Set the width of the side navigation to 0 */
    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        // document.getElementById("main").style.marginLeft = "0";
    }

    function userNav() {
        event.preventDefault();
        $(`div.user:first`).toggle('slow');
    }

    function estNav() {
        event.preventDefault();
        $(`div.establishment:first`).toggle('slow');
    }

    function studentNav() {
        event.preventDefault();
        $(`div.student:first`).toggle('slow');
    }

    function tstNav() {
        event.preventDefault();
        $(`div.tst:first`).toggle('slow');
    }

    function examNav() {
        event.preventDefault();
        $(`div.exam:first`).toggle('slow');
    }