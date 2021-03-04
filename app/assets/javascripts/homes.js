$(function() {
  let h = $(window).height();
  $('#butohes-log').height(h).css('display','block');
  $('#butohes-log-image').css('display','block');
  $('#global-container').css('display','none');
});

$(window).on('load', function () { //全ての読み込みが完了したら実行
  $('#butohes-log-image').delay(1500).fadeOut(800);
  $('#butohes-log').delay(2500).fadeOut(300);
  $('#global-container').css('display','block');
  $('#global-container').hide().fadeIn(5000);
  });

$(window).scroll(function (){
  $('.news-object').each(function(){
      var elemPos = $(this).offset().top,
          scroll = $(window).scrollTop(),
          windowHeight = $(window).height();
        if (scroll > elemPos - windowHeight + 100){
            $(this).addClass('scrollin');
          }
      });
  });