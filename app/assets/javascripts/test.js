// $(document).ready(function() {
//   $("p").text("jQuery稼働テスト(稼働中)");
// })

$(function() {
  $(".movie_list:gt(14)").hide();
  movieListLength = Math.floor($(".movie_list").length / 15) + 1;
  counter = 1;
  
  $(window).scroll(function() {
    scrollPosition = $(this).scrollTop();
    windowHeight = $(document).height();
    if (scrollPosition >= windowHeight * 0.7) {
      if (counter * 15 >= $(".movie_list").length) {
        previousList = (counter -1) * 15
        rest = $(".movie_list").length - previousList
        $(".movie_list").slice(previousList, previousList + rest).fadeIn(1000);
        return;
      };
      $(".movie_list").slice(0, counter * 15).fadeIn(1000);
      counter++;
    }
  })
  
  $("#btn").click(function() {
    $("html,body").animate({scrollTop:0},"1000");
  })
});