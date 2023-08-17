$(function(){
/* 화면 스크롤 이벤트시 */
    //gnb top으로 위치 변경
    var gnbLoc =115;
	$(window).scroll(function(){
		var winLoc = $(window).scrollTop();
		if(winLoc > gnbLoc){
			$('#mainHeader').css({'position':'fixed','top':'0'});
		} else if(winLoc <= gnbLoc){
			headerLoc = (gnbLoc-winLoc);
			$('#mainHeader').css({'position':'absolute','top':headerLoc});
		}
	
		// 좌측 페밀리 링크 접기
		var scrollLocation = $(window).scrollTop();
		if(scrollLocation != 0){
			$('div#sideMenuWrap').addClass('fold',200);
		}
    });
	
	
	
	
	
	/* 전체메뉴 */
	aa= true;
	$('#total_btn a').on('click',function(){
		if(aa){
			$('#total_menu').stop().slideDown(function(){aa=false;});
		} else{
			$('#total_menu').stop().slideUp(function(){aa=true;});
		};
	});	

	/* 전체 메뉴 닫기 버튼 */
	$('#total_close').on('click',function(){
		$('#total_menu').slideUp();
		return false;
	});
	
	
	
	
	
	
	
	
	
    // 페밀리 링크 제목 호버시 메뉴 열기
    $('div#sideFamilyLinks h3').on('mouseenter',function(){
		$(this).next().removeClass('fold',200);
	});
	
    // 페밀리 링크 닫기 버튼 클릭시
	$('#sideMenuHandle').click(function(){
		var familyLinkfold = $('div#sideMenuWrap').hasClass('fold');	//fold클래스를 가지고 있으면
		if(familyLinkfold){ 	//접혀진 상태면
			$('div#sideMenuWrap').removeClass('fold',200);
		} else {
			$('div#sideMenuWrap').addClass('fold',200);
		}
		return false;
	});
     
    
/* gnb 메뉴 호버/포커스 이벤트시 */      
	var $gnbA = $('#gnb > ul > li > a');
	var $div = $('#gnb > ul > li > div');
	$div.hide();
	$gnbA.on({
		'mouseenter focus':function(){
			$(this).next().show();
		},
		'mouseleave blur':function(){
			$(this).next().hide();
		}
	});

	$div.hover(
		function(){
			$(this).show();		//this는 2 뎁스
			$(this).prev().addClass('on');	//prev는 동위중에 이전꺼. 2뎁스에 마우스 올려도 원뎁스 올린것처럼
		},
		function(){
			$(this).hide();
			$(this).prev().removeClass('on');
	});
/* side menu */
	 $(window).resize(function(){
		var wSize = $(window).width();
		if (wSize < 1300){
			$('div#sideFamilyLinks').hide();
		} else {
			$('div#sideFamilyLinks').show();
		}
	 });
   

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
   
   
   
   /* ****main contents tab 버튼 클릭 이벤트시 컨텐츠 변경 */
   $('ol#mainTabs li > button').click(function(){
	   if(!$(this).parent().hasClass('tabOn')){ 	//활성화되지 않은 버튼을 눌렀을때
			if($(this).parent().index()==0){		//활성화 되지 않은 버튼이 첫번째일때 
				$('ol#mainTabs li').removeClass();	// =활성화되지 않은 버튼(첫번째)을 내가 클릭했을때
				$(this).parent().addClass('tabOn');
				$('ol#mainTabs li').eq(1).addClass('tab1');
				$('ol#mainTabs li').eq(2).addClass('tab2');
				$('ol#mainTabs li').eq(3).addClass('tab3');
			}else if($(this).parent().index()==1){
				$('ol#mainTabs li').removeClass();	
				$(this).parent().addClass('tabOn');
				$('ol#mainTabs li').eq(2).addClass('tab1');
				$('ol#mainTabs li').eq(3).addClass('tab2');
				$('ol#mainTabs li').eq(0).addClass('tab3');				
			}else if($(this).parent().index()==2){
				$('ol#mainTabs li').removeClass();	
				$(this).parent().addClass('tabOn');
				$('ol#mainTabs li').eq(3).addClass('tab1');
				$('ol#mainTabs li').eq(0).addClass('tab2');
				$('ol#mainTabs li').eq(1).addClass('tab3');				
			}else if($(this).parent().index()==3){
				$('ol#mainTabs li').removeClass();	
				$(this).parent().addClass('tabOn');
				$('ol#mainTabs li').eq(0).addClass('tab1');
				$('ol#mainTabs li').eq(1).addClass('tab2');
				$('ol#mainTabs li').eq(2).addClass('tab3');				
			}
		}
   });
   
/* ****커리큘럼 관련 아코디언 + 탭 메뉴 */    
	$('section#curriculum li div.achordion').click(function(){
		var indexNum = $(this).parent().index();
		var on = $(this).parent().hasClass('on');
		if(indexNum==0){
			if(on){
				$('section#curriculum li').first().removeClass();
				$('section#curriculum li').last().addClass('on');
				$('section#curriculum > ul').removeClass();
				$('section#curriculum > ul').addClass('last');
				//$('section#curriculum > ul') 배경이미지
			} else {
				$('section#curriculum li').first().addClass('on');
				$('section#curriculum li').last().removeClass();
				$('section#curriculum > ul').removeClass();
				$('section#curriculum > ul').addClass('first');
			}
		} else if(indexNum==1){
			if(on){
				$('section#curriculum li').first().addClass('on');
				$('section#curriculum li').last().removeClass();
				$('section#curriculum > ul').removeClass();
				$('section#curriculum > ul').addClass('first');
			} else {
				$('section#curriculum li').first().removeClass();
				$('section#curriculum li').last().addClass('on');
				$('section#curriculum > ul').removeClass();
				$('section#curriculum > ul').addClass('last');
			}			
		}
	});

/* footer familyLinks */
    var familyShow = false;
	$('div#footerMenu div.familySiteLink ul').click(function(){
		if(!familyShow){
			familyShow = !familyShow;
			$(this).parents('.familySiteLink').addClass('on');
		} else {
			familyShow = !familyShow;
			$(this).parents('.familySiteLink').removeClass('on');
		}
	});
/* product slide */
    var slide01moving = false;
	var slide01timer = setInterval(function(){
		$('#productsSlide .nextBtn').trigger('click');
	},1750);
	$('#productsSlide .nextBtn').click(function(){
		if(!slide01moving){
			slide01moving = true;
			$('ul.productList li:first').clone().appendTo('ul.productList');
			$('ul.productList').stop().animate({left:'-=200px'},600,function(){
				slide01moving=false;
				$('ul.productList li:first').remove();
				$('ul.productList').css({left:'+=200px'});
			});
		}
	});	
	$('#productsSlide .prevBtn').click(function(){
		if(!slide01moving){
			slide01moving = true;
			$('ul.productList li:last').clone().prependTo('ul.productList');
			$('ul.productList').css({left:'-=200px'})
			$('ul.productList').stop().animate({left:'+=200px'},600,function(){
				slide01moving=false;
				$('ul.productList li:last').remove();
				//$('ul.productList').css({left:'+=200px'});
			});
		}
	});
	$('section#productsSlide div.frame, .nextBtn, .prevBtn').hover(
		function(){
			clearInterval(slide01timer);
		}, function(){
			slide01timer = setInterval(function(){
				$('#productsSlide .nextBtn').trigger('click');
			}, 1750);
		}
	);
/* awards slide */
    var slide02moving = false;
	var slide02timer = setInterval(function(){
		$('#awards .nextBtn2').trigger('click');
	},1750);
	$('#awards .nextBtn2').click(function(){
		if(!slide02moving){
			slide02moving = true;
			$('ul.awardsList li:first').clone().appendTo('ul.awardsList');
			$('ul.awardsList').stop().animate({left:'-=150px'},600,function(){
				slide02moving=false;
				$('ul.awardsList li:first').remove();
				$('ul.awardsList').css({left:'+=150px'});
			});
		}
	});	
	$('#awards .prevBtn2').click(function(){
		if(!slide02moving){
			slide02moving = true;
			$('ul.awardsList li:last').clone().prependTo('ul.awardsList');
			$('ul.awardsList').css({left:'-=150px'})
			$('ul.awardsList').stop().animate({left:'+=150px'},600,function(){
				slide02moving=false;
				$('ul.awardsList li:last').remove();
				//$('ul.productList').css({left:'+=200px'});
			});
		}
	});
	$('section#awards div.frame, .nextBtn2, .prevBtn2').hover(
		function(){
			clearInterval(slide02timer);
		}, function(){
			slide02timer = setInterval(function(){
				$('#awards .nextBtn2').trigger('click');
			}, 1750);
		}
	);
	/* interviews 클릭 (영상은 1개만 ftp 서버 용량부족) */
	$('#interviews>.inner>ul.tab>li').click(function(e){
		e.preventDefault();
		$('#interviews>.inner>ul.tab>li').find('a').next().hide(); 
		$(this).find('a').next().show();
	});
	
	
}); // document ready 닫기 블락




