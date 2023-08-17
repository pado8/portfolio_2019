$.fn.menu = function(){
	var menu = $(this); //1 depthmenu
	var wrap = $('.menuAnimate'); //1 + 2 depthmenu
	var menuHeight = $('.oneDepth');
	var pageURL = location.href; //pageURL 현재페이지
	var activeMenu;
	menu.on({
		mouseover:function(){
			var tg = $(this);
			menu.removeClass('on');
			tg.addClass('on');
			//var th = menuHeight + tg.find('.twoDepth').height();
			wrap.stop().animate({height:458});
		},
		mouseout:function(){
			var tg = $(this);
			//menu.removeClass('on');
			wrap.stop().animate({height:141},function(){
				tg.removeClass('on');
			});
			//onActive();
		}
	});
	
 	menu.each(function(i){ // 0~4
		var tg = $(this);
		var sub = tg.find('.twoDep1400 > .twoDepth > .twoDepthitem');
		var menuURL = tg.children('a').attr('href');
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
				//onActive();				
			}
		});
	});
	//onActive();
	function onActive(){
		if(activeMenu) activeMenu.trigger('mouseover');
	};
};