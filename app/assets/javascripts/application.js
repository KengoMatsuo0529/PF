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
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

// $(function(){
//   // let accordionBtn = $('navbar-toggler')
//   $('navbar-toggler').click(function(){
//     alert('test')
//   })
// })

document.addEventListener("turbolinks:load",function(){
  let btn = document.getElementsByClassName('navbar-toggler').item(0)
  let menu = document.getElementById('navbarSupportedContent')
  btn.addEventListener('click',function(){
    document.getElementById('navbarSupportedContent').classList.toggle('collapse')
  })
})

$(function() {
    var topBtn = $('#top-btn a');
    topBtn.hide();
    $(window).scroll(function(){
         if ($(this).scrollTop() > 4000) {
             topBtn.fadeIn(2000);
         } else {
             topBtn.fadeOut();
         }
    });
    topBtn.click(function () {
        $('body, html').animate({
      scrollTop:0
    }, 1000);
    event.preventDefault();
  });
});

 $(function(){
  $(".inview").on("inview", function (event, isInView) {
    if (isInView) {
      $(this).stop().addClass("is-show");
    }
  });
  });

