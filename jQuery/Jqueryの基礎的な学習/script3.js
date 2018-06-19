$(function() {
  
  $('#language-wrapper').hover(
    function(){
    $('.language-text').css('background-color','red').fadeIn();
    },
    function(){
    $('.language-text').fadeOut();
    }
  );
});