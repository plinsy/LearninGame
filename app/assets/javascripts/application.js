// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery
// require activestorage
//= require turbolinks
//= require_tree .

//= require three

//= require chartkick

//= require highcharts

//= require highcharts/highcharts-more

//= require select2_simple_form


$(document).ready(function() {
    function icons() {
        for (let ind = $(`div#mySidenav i.fa-caret-right`).length - 1; ind >= 0; ind--) {
            let n = 0;
            $(`div#mySidenav i.fa-caret-right`).eq(ind).on('click', function() {
                if (n == 0) {
                    $(`div#mySidenav i.fa-caret-right`).eq(ind).removeClass('fas fa-caret-right');
                    $(`div#mySidenav i.fa-caret-right`).eq(ind).addClass(`fas fa-sort-down`);
                    n = 1;
                } else {
                    $(`div#mySidenav i.fa-caret-right`).eq(ind).removeClass(`fas fa-sort-down`);
                    $(`div#mySidenav i.fa-caret-right`).eq(ind).addClass('fas fa-caret-right');
                    n = 0;
                }
            });
        }
    }
    // icons();


    function showPage() {
        document.body.classList.remove('js-loading');
    }

    function loginmodal() {
        $(`#login-modal-launcher`).on('click', () => {
            closeRegister();
            openLogin();
        });

        $(`.login-close`).on('click', () => {
            closeLogin();
        });
    }
    // loginmodal();

    function registermodal() {
        $(`#register-modal-launcher`).on('click', () => {
            closeLogin();
            openRegister();
        });

        $(`.register-close`).on('click', () => {
            closeRegister();
        });
    }
    // registermodal();

    function openLogin() {
        $(`div#login-modal`).show('slow');
    }

    function closeLogin() {
        $(`div#login-modal`).hide('slow');
    }

    function openRegister() {
        $(`div#register-modal`).show('slow');
    }

    function closeRegister() {
        $(`div#register-modal`).hide('slow');
    }

    function students() {
        for (let p = 0; p < $(`div.pourcentage`).length; p++) {
            $pourcentage = Number($(`div.pourcentage`).eq(p).attr('value'))
            if ($pourcentage < 10) {
                $(`div.progress-bar`).eq(p).addClass('bg-danger');
            } else if ($pourcentage >= 10 && $pourcentage < 25) {
                $(`div.progress-bar`).eq(p).addClass('bg-warning');
            } else if ($pourcentage >= 25 && $pourcentage < 50) {
                $(`div.progress-bar`).eq(p).addClass('bg-primary');
            } else if ($pourcentage >= 50 && $pourcentage < 75) {
                $(`div.progress-bar`).eq(p).addClass('bg-secondary');
            } else {
                $(`div.progress-bar`).eq(p).addClass('bg-success');
            }
        }
    }
    students();
});