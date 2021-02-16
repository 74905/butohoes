$(function() {
  let h = $(window).height();
  $('#butohes-log').height(h).css('display','block');
  $('#butohes-log-image').css('display','block');
});

$(window).on('load', function () { //全ての読み込みが完了したら実行
  $('#butohes-log-image').delay(1500).fadeOut(800);
  $('#butohes-log').delay(2500).fadeOut(300);
  $('#global-container').css('display','block');
  $('#global-container').hide().fadeIn(5000);
  });

  $(function(){
    $(window).scroll(function (){
        $('.back-image').each(function(){
            var targetElement = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > targetElement - windowHeight + 200){
                $(this).css('opacity','1');
                $(this).css('transform','translateY(0)');
            }
        });
    });
});