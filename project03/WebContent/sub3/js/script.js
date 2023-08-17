jQuery(document).ready(function(){
	//쇼이미지 애니메이션
	$('.ewshowImg div').each(function(){
		var show = $(this);
		var th = show.height();
		show.hover(
			function(){
				show.find('a').stop().animate({'margin-top':-th},500);
			},
			function(){
				show.find('a').stop().animate({'margin-top':'0px'},500);
			});
	});
});