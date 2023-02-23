$('.book_button').hover(function(){
	if($(".locallist").is(":visible")){
                    $(".locallist").css("display","none");
                }
                else{
                    $(".locallist").css("display","block");
                }
  });