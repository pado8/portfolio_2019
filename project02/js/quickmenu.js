$.fn.quickmenu = function(){
	$(this).hover(
		function(){
			var num = $(this).index()+1;
			$(this).find('>a>img').attr({'src':'images/qm/quick_on_0'+num+'.png'});
		},
		function(){
			var num = $(this).index()+1;
			$(this).find('>a>img').attr({'src':'images/qm/quick_0'+num+'.png'});
		}
	);
	
	bb = true;
	$('.quick_toggle').click(function(){
		if(bb){
			$(this).addClass('quick_open');
			$(this).stop().animate({'margin-right':'-70px'},500);
			$('.quickmenu').stop().animate({'margin-right':'-70px'},500,function(){bb=false;});
		}else{
			$(this).removeClass('quick_open');
			$(this).stop().animate({'margin-right':'0px'},500);
			$('.quickmenu').stop().animate({'margin-right':'0px'},500,function(){bb=true;});
		}
	});
};
