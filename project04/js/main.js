$(function(){
	/* 메인비주얼배너 */
	window.mySwipe = $('#mySwipe').Swipe({
		auto: 3000, // 배너가 3초 간격으로 이동
		continuous: true,
		callback: function(index, element){
			$('.touch_bullet .active').attr('src',$('.touch_bullet .active').attr('src').replace('on.png','off.png')).removeClass('active');
			$('.touch_bullet img').eq(index).attr('src',$('.touch_bullet img').eq(index).attr('src').replace('off.png','on.png')).addClass('active');
		}
	}).data('Swipe');	
	
	/* 비주얼 이전, 다음 버튼 */
	$('.touch_left_btn a').on('click', function(){
		mySwipe.prev();
		return false;
	});
	$('.touch_right_btn a').on('click', function(){
		mySwipe.next();
		return false;
	});
	
	/* 롤링 버튼 배너 */
	$('#roll_banner_wrap dd').not(':first').hide();
	var onBtn = $('#roll_banner_wrap dt a:first');
	$('#roll_banner_wrap dt a').on('click',function(){
		$('#roll_banner_wrap dd:visible').hide();
		$('img', onBtn).attr('src',$('img',onBtn).attr('src').replace('over.png','out.png'));
		var num = $('#roll_banner_wrap dt a').index(this);
		$('#roll_banner_wrap dd').eq(num).show();
		$('img', this).attr('src',$('img',this).attr('src').replace('out.png','over.png'));
		onBtn = $(this);
		return false;
	});
	var btnNum = 0;
	function autoPlay(){
		if(btnNum>=$('#roll_banner_wrap dt').size()) {btnNum = 0;}
		$('#roll_banner_wrap dt a').eq(btnNum).trigger('click');
		auto1=setTimeout(autoPlay,1750);
		btnNum++;
	};
	autoPlay();
	$('.playBtn').on('click',function(){
		clearInterval(auto1);
		auto1 = setTimeout(autoPlay,1750);
		$('img',this).attr('src',$('img',this).attr('src').replace('off.gif','on.gif'));
		$('.stopBtn img').attr('src',$('.stopBtn img').attr('src').replace('on.gif','off.gif'));
		return false;
	});
	$('.stopBtn').on('click',function(){
		clearInterval(auto1);
		$('img',this).attr('src',$('img',this).attr('src').replace('off.gif','on.gif'));
		$('.playBtn img').attr('src',$('.playBtn img').attr('src').replace('on.gif','off.gif'));
		return false;
	});
	
	/* 탭메뉴 */
	var onTab = $('#tabmenu dt a:first');
	$('#tabmenu dt a').on('mouseover focus click',function(){
		$('#tabmenu dd:visible').hide();
		$('img',onTab).attr('src',$('img',onTab).attr('src').replace('over.png','out.png'));
		$(this).parent().next().show();
		$('img',this).attr('src',$('img',this).attr('src').replace('out.png','over.png'));
		onTab=$(this);
		return false;
	});
	
	/* 신계절상품 슬라이더 */
	var mySlider=$('#best_bg ul').bxSlider({
		mode:'horizontal', 	//수평 방향으로 이동
		speed:300, 			//이동 속도
		pause:1500,			//시간 속도
		pager: false, 		//페이징 표시를 숨김 또는 표시를
		moveSlides:1, 		//이동 슬라이드 갯수
		slideWidth: 170/* 22+'%' */, 	//한개 슬라이드 폭
		minSlides: 4, 		//최소 노출 슬라이드 수
		maxSlides: 7, 		//최대 노출 슬라이드 수
		slideMargin: 18/* 3+'%' */, 	//슬라이드 간의 간격
		auto: true, 		//자동 슬라이드 여부
		autoHover: true, 	//마우스 오버시 정지
		controls: false, 	//이전 다음 버튼을 숨김 (아래 함수로 따로 코딩할 것임)
		responsive: true,
		infiniteLoop: true
	});
	$('.prev_btn').on('click',function(){
		mySlider.goToPrevSlide();
		return false;
	});		
	$('.next_btn').on('click',function(){
		mySlider.goToNextSlide();
		return false;
	});
	
	/* 팝업연동 */	
	$(window).resize(function(){
		var windowWidth = $(window).width();
		if(windowWidth>1280){
			if($.cookie('pop')!='pado8'){
				$('#pop_wrap').show();
				$('#pop_wrap').css('cursor','move').draggable();
				$('#pop_wrap area:eq(0)').on('click', function(){
					$('#pop_wrap').fadeOut();
					return false;
				});
				$('#pop_wrap area:eq(1)').on('click', function(){
					$.cookie('pop','pado8',{expires: 1});
					$('#pop_wrap').fadeOut();
					return false;
				});
			}
			
		}else{
			$('#pop_wrap').hide();
		}
	});	
	
	/* 이벤트슬라이드배너 */
	var visual = $('#brandVisual > ul > li');
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
			return false;
		}
	});
	$('#event_wrap').on({
		mouseover:function(){
			clearInterval(setIntervalId);
		},
		mouseout:function(){
			timer();
		}
	});
	timer();
	function timer(){
		setIntervalId = setInterval(function(){
			var n = current + 1;
			if(n==visual.size()){n=0;}
			button.eq(n).trigger('click');
		},1750);
	};
	function move(i){
		var currentEl = visual.eq(current);
		var nextEl = visual.eq(i);
		currentEl.css({left:0}).stop().animate({left:'-100%'});
		nextEl.css({left:'100%'}).stop().animate({left:'0%'});
		current = i;
	};
	
	/* 레시피 슬라이드 */
	$('.slider_text').css('left',-50).each(function(index){
		$(this).attr('data-index',index);
	});
	$('.control_button').each(function(index){
		$(this).attr('data-index',index);
	}).click(function(){
		var index = $(this).attr('data-index');
		moveSlider(index);
	});
	function moveSlider(index){
		var willMoveLeft = -( index * 785);
		$('.slider_panel').animate({left:willMoveLeft},'500');
		$('.control_button[data-index='+index+']').addClass('active');
		$('.control_button[data-index!='+index+']').removeClass('active');
		$('.slider_text[data-index='+index+']').show().animate({left:0});
		$('.slider_text[data-index!='+index+']').hide().animate({left:-50},500);
		randomNumber = index;
	};
	 
	var randomNumber = Math.round(Math.random()*4);
	moveSlider(randomNumber);
	
	var setIntervalId1;
	function timer1(){
		setIntervalId1 = setInterval(function(){
			randomNumber++;
			if(randomNumber==$('.control_button').size()){randomNumber=0};
			moveSlider(randomNumber);
		},2000);
	};
	timer1();
	
	$('.animation_canvas').hover(
		function(){
			clearInterval(setIntervalId1);
		},
		function(){
			timer1();
		}
	);		
	
	/* 모바일 전체메뉴 */
	$('#header > .phone_talmenu > a').click(function(){
			$('#gnbMo').css('display','block');
		});
	$('#gnbMo > a').click(function(){
			$('#gnbMo').css('display','none');
		});

	
});









