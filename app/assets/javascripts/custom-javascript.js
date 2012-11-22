$(document).ready(function() {
    $('.carousel').carousel({
    interval: 7000,
    })
});

$(document).on('page:fetch', function() {
  $('#mask').fadeIn(600);
});

// $(document).ready(function() {
//   $('section#body_content').hide().fadeIn('800');
//   $('#page_loading').hide();
// });
$(function(){
  var bodyWidth = $('section#body_content').width();
  var bodyHeight = $('section#body_content').height();
  $('#mask').show();
  $('#mask').width(bodyWidth + 30);
  $('#mask').height(bodyHeight);
  $('#mask').fadeOut(1200);
});

$(function(){
  $('input[type="submit"]').addClass('btn');
});