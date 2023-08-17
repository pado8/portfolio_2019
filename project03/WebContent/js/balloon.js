﻿$.fn.balloon = function(){
	var balloon = $('<div class="balloon"></div>').appendTo('body');
	function updateBalloonPosition(x, y) {
		balloon.css({left: x+15, top: y+15});
	};
	function showBalloon(){
		balloon.stop().css('opacity',0).show().animate({opacity:1},1000);
	};
	function hideBalloon(){
		balloon.stop().animate({opacity:0},1000, function(){balloon.hide()});
	};
	$(this).each(function(){
		var element = $(this);
		var text = element.attr('title');
		// text = 도큐멘트 기술하기 위한 언어입니다.
		element.attr('title','');
		element.hover(
			function(event){
				balloon.text(text);
				updateBalloonPosition(event.pageX, event.pageY);
				showBalloon();
			},
			function(){
				hideBalloon();
			}
		);
		element.mousemove(function(event){
			updateBalloonPosition(event.pageX, event.pageY);
		});
	});
	return this;
};