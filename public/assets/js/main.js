$(document).ready(function(){
  function editSize(){
    $("#carousel-1 div.item").each(function(index){
      $(this)[0].style.width = window.innerWidth.toString()+"px";
      if( window.innerWidth/window.innerHeight>1)
        $(this)[0].style.height = parseInt(window.innerHeight*0.90).toString()+"px";
      else
        $(this)[0].style.height = parseInt(window.innerHeight*0.50).toString()+"px";
    });
  }
  editSize();
  window.onresize=function(e){
        editSize();
  };
  // Add "loaded" class when a section has been loaded
  $(window).scroll(function() { 
    var scrollTop = $(window).scrollTop();
    $(".section").each(function() {
      var elementTop = $(this).offset().top - $('#header').outerHeight();
      if(scrollTop >= elementTop) {
        $(this).addClass('loaded');
      }
    });
  });

  // One Page Navigation Setup
  $('#navigation').singlePageNav({
    offset: $('#navbar').outerHeight(),
    filter: ':not(.external)',
    speed: 750,
    currentClass: 'active',

    beforeStart: function() {
    },
    onComplete: function() {
    }
  });

  // Sticky Navbar Affix
  $('#navbar').affix({
    offset: {
      top: $('#topbar').outerHeight(),
    }
  });

  // Smooth Hash Link Scroll
  $('.smooth-scroll').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });

  $('.nav a').on('click', function(){
    if($('.navbar-toggle').css('display') !='none'){
      $(".navbar-toggle").click();
    }
  });


  

  // filter items when filter link is clicked
  $('#filters a').click(function(){
    var selector = $(this).attr('data-filter');
    $container.isotope({ filter: selector });
    return false;
  });
}); 