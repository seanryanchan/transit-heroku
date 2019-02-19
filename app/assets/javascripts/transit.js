/* Change Header Active Link */


var currentlink = window.location.href;

$(".transit-navbar li a").each( function(){
		if ( "http://localhost:3000"+$(this).attr('href') == currentlink ){
			$(this).addClass("transit-active");
		}
		else{
			$(this).removeClass("transit-active");
		}
	}	
);
