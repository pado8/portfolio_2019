jQuery(document).ready(function(){
	//메뉴 애니메이트 플러그인
	$('.oneDepth > li').menu();
	//퀵메뉴바 플러그인
	$('.quick_icon>li').quickmenu();
	var smenu = $('.smOnedepthlist');
	var wrap = $('.smOneDepth');
	var menuHeight = $('.smOneDepth a');
	var pageURL = location.href;
	var activeMenu;
	
	smenu.each(function(){
		smenu = $(this);
		oneDepth = smenu.find('.smOneDepth');
		oneDepth.on({
			mouseover:function(){
				offActive();
				var tg = $(this);
				oneDepth.removeClass('on');
				tg.addClass('on');
				var th = menuHeight.height() + tg.find('.smtwoDepth').height();
				tg.stop().animate({height:th+10},250);
			},
			mouseout:function(){
				var tg = $(this);
				var th = menuHeight.height();
				tg.stop().animate({height:th},function(){
					tg.removeClass('on');
				});			
				onActive();
			}
			
		});
		
	});
  	smenu.each(function(i){ // 0~4
		var tg = $(this);
		var sub = tg.find('.smtwoInner > .smtwoDepth > li');
		var menuURL = tg.children('.smOneDepth > a').attr('href');
		var active = pageURL.indexOf(menuURL);
		if(active > -1) activeMenu = tg;
		
		sub.each(function(j){ // 2, 4, 2, 4, 2
			var tg = $(this);
			var subURL = tg.children('a').attr('href');
			active = pageURL.indexOf(subURL);
			if(active > -1) activeMenu = tg;
		});
		sub.on({
			mouseover:function(){
				var tg = $(this);
				sub.removeClass('on');
				tg.addClass('on');
			},
			mouseout:function(){
				var tg = $(this);
				tg.removeClass('on');
				onActive();				
			}
		});
	});
	onActive();
	function onActive(){
		if(activeMenu) activeMenu.trigger('mouseover');
	};
	function offActive(){
		var tg = $('.smOneDepth');
		tg.stop().animate({height:80.6},300);
	};
});
