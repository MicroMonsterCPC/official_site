$(function($) {
  WindowHeight = $(window).height();
  $('.drawr').css('height', WindowHeight); //メニューをWindowの高さいっぱいにする
  $(document).ready(function() {
    $('.menu-btn').click(function(){ //クリックしたら
      console.log("DONE")
      $('.drawr').animate({width:'toggle'}); //animateで表示・非表示
      $(this).toggleClass('peke'); //toggleでクラス追加・削除
    });
  });
});
