jQuery(document).ready(function(){

	/* 로그인버튼 */
	$('.login_wrap>a').on('click',function(){
		$('#login_f').animate({top:'20px'},500);
		return false;
	});
	$('.login_wrap .login_close_btn, input[alt="login"]').on('click',function(){
		$('#login_f').animate({top:'-500px'},500);
		return false;
	});
	$('#user_id, #user_pw').on('focus',function(){
		$(this).prev().css('left','-66666px');
	});
	$('#user_id, #user_pw').on('blur',function(){
		if(this.val()=="") $(this).prev().css('left','1px');
	});
	/* top 이벤트배너 */
	$('#top_event').find('.close_btn').on('click',function(){
		$('#top_event').slideUp(750);
	});
	
	/* zoom 버튼 */
	var base = 100;
	var mybody = $('body');
	$('#zoom a').on('click',function(){
		var zNum = $('#zoom a').index(this);
		if(zNum==0){//확대(+)
			base+=10;
		}else if(zNum==1){//100%(100)
			base=100;
		}else {//축소(-)
			base-=10;
		}
		mybody.css('overflow-x','auto').css('transform-origin','50% 0').css('transform','scale('+base/100+')').css('zoom',base+'%');
		return false;
	});
	
	/* 인쇄버튼 */
	$('.print_btn').on('click',function(){
		window.print();
		return false;
	})
	
	/* 검색 창 안내 가이드 */
	$('#keyword').on('focus',function(){
		$(this).css('background-position','0 -500px');
	}).on('blur',function(){
		if($(this).val()=="") $(this).css('background-position','0 0px');
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
	
	/* 날짜표기 */
	var t=new Date();
	var y=t.getFullYear();
	var m=t.getMonth();
	var d=t.getDate();
	$('#date_wrap .year').text(y);
	$('#date_wrap .month').text(m+1);
	$('#date_wrap .date').text(d);
	
	/* 관련사이트 이동 */
	$('form[name=rel_f]').on('submit',function(){
		var url=$('select',this).val();
		window.open(url);
		return false;
	});
	
	/* 퀵메뉴 */
	var defaultTop = parseInt($('#quick_menu').css('top'));
	$(window).on('scroll',function(){
		var scv = $(window).scrollTop();
		if(scv<705){scv=705};
		if(scv>2450){scv=2450};
		$('#quick_menu').stop().animate({top:scv+defaultTop+'px'},500);
	});
	$('#quick_menu').css({top:'865px'});
});











