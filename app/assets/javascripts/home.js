$(document).ready(function() {
    function resetForm(e) {
        e.preventDefault();
        $(`#register-form`).reset();
    };

    // script canvas
    $('.loader').ClassyLoader({
        width: 300,
        height: 300,
        diameter: 100,
        percentage: 25,
        speed: 45,
        fontFamily: 'Georgia',
        fontColor: 'rgba(255,255,255,1)',
        lineColor: 'rgba(255,255,255,1)',
        lineWidth: 8,
        remainingLineColor: 'rgba(0,0,0,1)'
    });
    $('.loadertwo').ClassyLoader({
        diameter: 100,
        width: 300,
        height: 300,
        percentage: 75,
        speed: 45,
        fontFamily: 'Georgia',
        fontColor: 'rgba(255,255,255,1)',
        lineColor: 'rgba(255,255,255,1)',
        lineWidth: 8,
        remainingLineColor: 'rgba(0,0,0,1)'
    });
    $('.loaderthree').ClassyLoader({
        diameter: 100,
        width: 300,
        height: 300,
        percentage: 100,
        speed: 45,
        fontFamily: 'Georgia',
        fontColor: 'rgba(255,255,255,1)',
        lineColor: 'rgba(255,255,255,1)',
        lineWidth: 8,
        remainingLineColor: 'rgba(0,0,0,1)'
    });
    // end script canvas

    // swipper
    var swiper = new Swiper('.swiper-container', {
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: 'auto',
        coverflowEffect: {
            rotate: 50,
            stretch: 0,
            depth: 100,
            modifier: 4,
            slideShadows : true,
        },
        pagination: {
            el: '.swiper-pagination',
        },
    });
})