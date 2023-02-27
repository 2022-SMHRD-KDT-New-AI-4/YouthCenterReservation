	//함수 호출 반복문
	for(let i = 0; i < $('.tab-button').length; i++){
	    tabOpen(i); 
	}
	
	//함수에 보관
	function tabOpen(e){
	    $('.tab-button').eq(e).click(function(){
	        $('.tab-button').removeClass('active');
	        $('.tab-content').removeClass('show');
	        $('.tab-button').eq(e).addClass('active');
	        $('.tab-content').eq(e).addClass('show');
	    });
	}