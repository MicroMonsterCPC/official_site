$(function(){
  $(".ballot").click(function(){
    $.ajax({
      type: 'POST',
      url: window.location + '/ballot.json',
      data: {form_ballot: $(this).val()},
    }).then(function(response){
      if (response.status === "Successfully") {
        $(".message").html("<div class='alert alert-success' role='alert'>投稿が完了しました</div>");
      } else if (response.status === "Already") {
        $(".message").html("<div class='alert alert-warning'  role='alert'>すでに投稿を完了しています</div>");
      } else {
        $(".message").html("<div class='alert alert-danger' role='alert'>内部サーバーエラー</div>");
      }
    })
  });
});
