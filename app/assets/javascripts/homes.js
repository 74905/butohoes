$(function() {
  let h = $(window).height();
  $('#butohes-log').height(h).css('display','block');
  $('div').removeClass('animsition-overlay-slide');
  $('#butohes-log-image').css('display','block');
  $('.global-container').css('display','none');
});

$(window).on('load', function () { //全ての読み込みが完了したら実行
  $('#butohes-log-image').delay(1500).fadeOut(800);
  $('#butohes-log').delay(2500).fadeOut(300);
  $('.global-container').css('display','block');
  $('.global-container').hide().fadeIn(5000);
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

  $(document).ready(function() {
    $(".global-container").animsition({
      inClass: 'overlay-slide-in-top',
      outClass: 'overlay-slide-out-top',
      inDuration: 1500,
      outDuration: 1000,
      linkElement: '.animsition-link',
      // e.g. linkElement: 'a:not([target="_blank"]):not([href^="#"])'
      loading: false,
      loadingParentElement: 'body', //animsition wrapper element
      loadingClass: 'animsition-loading',
      loadingInner: '', // e.g '<img src="loading.svg" />'
      timeout: false,
      timeoutCountdown: 5000,
      onLoadEvent: true,
      browser: [ 'animation-duration', '-webkit-animation-duration'],
      // "browser" option allows you to disable the "animsition" in case the css property in the array is not supported by your browser.
      // The default setting is to disable the "animsition" in a browser that does not support "animation-duration".
      overlay : true,
      overlayClass : 'animsition-overlay-slide',
      overlayParentElement : 'body',
      transition: function(url){ window.location.href = url; }
    });
  });