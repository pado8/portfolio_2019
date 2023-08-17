jQuery(document).ready(function(){
	//메인 중간 아이콘배너에 마우스올렸을때
	$('.rollover').each(function(){
		var a = $(this);
		var img = a.find('img');
		var src_off = img.attr('src');
		var src_on = src_off.replace('_off','_on');
		a.bind('mouseenter focus',function(){
			img.attr('src',src_on);
		});
		a.bind('mouseleave blur',function(){
			img.attr('src',src_off);
		});
	});
	
	//통합검색바 플러그인
	$('.searchWord').guide();

	//퀵메뉴바 플러그인
	$('.quick_icon>li').quickmenu();
	
	//이미지 슬라이드쇼
	var interval = 1000;
	$('.ewvisitImg').each(function(i){
		var timer;
		var container = $(this);
		function switchImg(){
			var anchors = container.find('a');
			var first = anchors.eq(i);
			var second = anchors.eq(i+1);
			first.fadeOut().appendTo(container);
			second.fadeIn();
		};
		function startTimer(){
			timer=setInterval(switchImg, interval);
		};
		function stopTimer(){
			clearInterval(timer);
		};
		container.find('a').hover(stopTimer, startTimer);
		startTimer();
	});

	
	//탭 메뉴
		$('.mvNotice').each(function(){
		var topDiv = $(this);
		var anchors = topDiv.find('div.mvNoticetit ul.tabs a');
		var panelDivs = topDiv.find('div.noticeWrap');
		var lastAnchor;
		var lastPanel;
		anchors.show();
		
		lastAnchor = anchors.filter('.on');
		lastPanel = $(lastAnchor.attr('href'));
		panelDivs.hide();
		lastPanel.show();
		anchors.click(function(e){
			e.preventDefault(); //하이퍼링크 중지
			var currentAnchor = $(this);
			var currentPanel = $(currentAnchor.attr('href'));
			if(currentAnchor.get(0)===lastAnchor.get(0)){
				return;
			}
			lastPanel.stop().slideUp(function(){
				lastAnchor.removeClass('on');
				currentAnchor.addClass('on');
				currentPanel.stop().slideDown();
				lastAnchor = currentAnchor;
				lastPanel = currentPanel;
			});
		});
	});
	
	//말풍선 달기 플러그인으로 함
	$('.showBalloon').balloon();

	//쇼이미지 애니메이션
	$('.ewshowImg div').each(function(){
		var show = $(this);
		show.hover(
			function(){
				show.find('a').stop().animate({'margin-top':'-400px'},500);
			},
			function(){
				show.find('a').stop().animate({'margin-top':'0px'},500);
			});
	});

	/* 메뉴 애니메이트 */
	$('.oneDepth > li').menu();

	/* 메인배너 슬라이드 */
	var visual = $('#brandVisual > .slider_panel > li');
	var button = $('#buttonList > li');
	var current = 0;
	var setIntervalId;
	button.on({
		click:function(){
			var tg = $(this);
			var i = tg.index();
			if(current===tg.index()){return;}
			button.removeClass('on');
			tg.addClass('on');
			move(i);
		}
	});
	timer();
	function timer(){
		setIntervalId=setInterval(function(){
		var n = current + 1;
		if(n == visual.size()){n=0;}
		button.eq(n).trigger('click');
		},1000);
	};
	
	visual.hover(
		function(){
			clearInterval(setIntervalId);
		},
		function(){
			timer();
		}
	);
	
	function move(i){
		var currentEl = visual.eq(current);
		var nextEl = visual.eq(i);
		currentEl.css({left:'0%'}).stop().animate({left:'-100%'});
		nextEl.css({left:'100%'}).stop().animate({left:'0%'});
		current = i;
	};
	$('.left').click(function(){
		var n = current-1;
		button.eq(n).trigger('click');
	});
	$('.right').click(function(){
		var n = current+1;
		if(n==button.size()){n=0};
		button.eq(n).trigger('click');
	});
	
	//메인 글씨 탑슬라이드
	var current2 = 0;
	var notice = $('#footer_notice_inner > ul > li');
	setInterval(function(){
		var prev2 = notice.eq(current2);
		move2(prev2,'0%','-100%'); 
		current2++;
		if(current2 == notice.size()){
			current2=0;
		}
		var next2 = notice.eq(current2);
		move2(next2,'100%','0%');
	},3000);
	
	function move2(aa,start,end){
		aa.css('top',start).stop().animate({top:end},{duration:1000,ease:'easeOutCubic'});
	}

	/* 푸터 박스 슬라이더 */
	var mySlider=$('#best_bg ul').bxSlider({
		mode:'horizontal', 	//수평 방향으로 이동
		speed:300, 			//이동 속도
		pause:1500,			//시간 속도
		pager: false, 		//페이징 표시를 숨김 또는 표시를
		moveSlides:1, 		//이동 슬라이드 갯수
		slideWidth: 200, 	//한개 슬라이드 폭
		minSlides: 7, 		//최소 노출 슬라이드 수
		maxSlides: 7, 		//최대 노출 슬라이드 수
		slideMargin: 1, 	//슬라이드 간의 간격
		auto: true, 		//자동 슬라이드 여부
		autoHover: true, 	//마우스 오버시 정지
		controls: false 	//이전 다음 버튼을 숨김 (아래 함수로 따로 코딩할 것임)
	});
	$('.prev_btn').on('click',function(){
		mySlider.goToPrevSlide();
		return false;
	});		
	$('.next_btn').on('click',function(){
		mySlider.goToNextSlide();
		return false;
	});
	
	
	
});