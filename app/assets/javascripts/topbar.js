// ページの読み込みが完全に完了したら以下の処理を実行
window.onload = function() {

  // 「#top-bar」を固定/解除するための基準となる値を取得し、変数「topbar」に代入
  var topbar = $("#top-bar").offset().top;

  // 「#bottom-bar」を固定/解除するための基準となる値を取得し、
  // 変数「bottombar」に代入
  var bottombar = $("#underst").offset().top - $(window).height() 
    + $("#top-bar").height();

  // 画面がスクロールされたら以下の処理を実行
  $(window).scroll(function() {

    // ScrollTopの位置が「topbar」よりも値が大きければ、「#top-bar」を固定し、
    // 記事部分のブロック要素の位置を「#top-bar」の高さ分だけ下げる
    if($(window).scrollTop() > topbar) {

      $("#top-bar").css({"position": "fixed", "top": "0"});
      $("#entry").css({"position": "relative", "top":"50px"});

    // 小さければ、「#top-bar」の固定を解除し、
    // 記事部分のブロック要素の位置を元に戻す
    } else {

      $("#top-bar").css("position", "static");
      $("#entry").css({"position": "relative", "top": 0});

    }

    // ScrollTopの位置が「bottombar」よりも値が小さければ、
    // 「#bottom-bar」を固定
    if($(window).scrollTop() < bottombar) {
      $("#bottom-bar").addClass("fixed-bottom");
    // 大きければ、「#bottom-bar」の固定を解除
    } else {
      $("#bottom-bar").removeClass("fixed-bottom");
    }

  });

}