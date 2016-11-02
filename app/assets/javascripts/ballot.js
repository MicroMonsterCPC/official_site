  $(function(){
    $(".ballot").click(function(){
      $.ajax({
        type: 'POST',
        url: window.location + '/ballot.json',
        data: {form_ballot: $(this).val()},
      }).then(function(response){
        if (response.status === "Successfully") {
          $(".message").text("投稿が完了しました");
        } else if (response.status === "Already") {
          $(".message").text("すでに投稿が完了しています");
        } else {
          $(".message").text("エラー");
        }
      })
    });
  });
