$(document).ready(function(){	

	//硫붿씤 ??吏곸엫
	$('#main').on('mousemove',function(e){
		var posX = e.pageX;
		var posY = e.pageY;
		$('.p1').css({'left':740-(posX/200),'top':261-(posY/800)});
		$('.p2').css({'left':964-(posX/100),'top':272-(posY/1000)});
		$('.p3').css({'left':1091-(posX/500),'top':238-(posY/700)});
		$('.line').css({'left': 231-(posX/-300)});
	}) 
	
	
	
	//?꾨줈?? ?ㅽ궗
	
	$(window).on('scroll',$.throttle(1000/15,function(){	
		var sct = $(window).scrollTop();
		var $content = $('.profile04'); 
		var $charts = $content.find('.skill');	
			
			if(sct >= 600 && sct <= 1200){
				activatePercent();
			}else{
				zeroPercent();
			};
			
		function activatePercent(){
			
			if($content.hasClass('active') == false){
				$charts.each(function(i){
					var $chart = $(this);
					var $chartBar = $chart.find('.skill_g')
						.css({width:'0%'});
					var $percentNumber = $chart.find('.skill_p .num');
					var percentData = $percentNumber.text();
					$percentNumber.text(0);
					$({percent:0}).delay(150*i).animate({percent:percentData},{
						duration: 1000,
						progress: function(){
							var now = this.percent;
							
							$chartBar.css({width:now+'%'});
							$percentNumber.text(Math.floor(now));					
						} 
					});
				});
			};
			$content.removeClass('unactive');
			$content.addClass('active');	
		};
			
		function zeroPercent(){
			
			if($content.hasClass('unactive') == false){
				$charts.each(function(){
					var $chart = $(this);
					var $chartBar = $chart.find('.skill_g')
						.css({width:'0%'});
					var $percentNumber = $chart.find('.skill_p .num');
					
					/* $percentNumber.text(0); */
				});
			};
			$content.removeClass('active');	
			$content.addClass('unactive');	
		};
	})); 
	
	// ?뱀뀡蹂? ??吏곸엫
/* 	
	$(window).scroll(function(){
		var sct=$(window).scrollTop();
		var hello=$('#project1').offset();
		if(sct>hello.top-200 && sct < hello.top+950){
			$('#project1 .num').delay(300).slideDown(1000);
			$('#project1 .project03').delay(300).slideDown(1000);
			$('#project1 .project01').delay(300).slideDown(1000);
			$('#project1 .project02').delay(300).slideDown(1000);
		}else{
			$('#project1 .num').slideUp();
			$('#project1 .project03').slideUp();
			$('#project1 .project01').slideUp();
			$('#project1 .project02').slideUp();
		}
		
		var sct=$(window).scrollTop();
		var hello=$('#project1').offset();
		if(sct>hello.top-600  && sct < hello.top+950){
			$('.cssMainImg').stop().animate({left:'5px'},1000);
		}else{
			$('.cssMainImg').stop().animate({left:'-900px'},300);
		}
		
	});
 */
  //?꾨줈?앺듃1 ?ㅽ겕濡ㅽ슚怨?
	$(window).scroll(function(){
		var sct=$(window).scrollTop();
		var hello=$('#project1').offset();
		
		if(sct>hello.top-200){			
			$('.project1>.jqBar').stop().animate({'width':'120px'},300);
			$('.project1>.cssBar').stop().animate({'width':'120px'},300);

		}else{
			$('.project1>.jqBar').stop().animate({'width':'0px'},300);
			$('.project1>.cssBar').stop().animate({'width':'0px'},300);
		}
	});
	
	
 	//css jq 留됰?湲? ?섏삤湲?
/* 	
	$('.project1>.jqMainImg').hover(
			function(){
				$('.project1>.jqBar').stop().animate({'width':'120px'},300);
			},
			function(){
				$('.project1>.jqBar').stop().animate({'width':'0px'},300);
			}	
		);	
	$('.project1>.cssMainImg').hover(
			function(){
				$('.project1>.cssBar').stop().animate({'width':'120px'},300);
			},
			function(){
				$('.project1>.cssBar').stop().animate({'width':'0px'},300);
			}	
		);
 */
 
 
 //?꾨줈?앺듃蹂? ?ㅽ겕濡ㅽ슚怨?
 // 02 ?쒖씠荑쇰━
	$(window).scroll(function(){
		var sct=$(window).scrollTop();
		var hello=$('#jQuery01').offset();
		
		if(sct>hello.top-200){			
			$('#jQuery01 .text_box_right>div>strong').slideDown(1000);
			$('#jQuery01 .text_box_right>div>p').slideDown(1000);
			$('#jQuery01 .main_tit_bar').slideDown(500, function(){$('#jQuery01 .main_tit_tit').fadeIn();});
			//$('.main_tit_bar').animate({height:253}
			//,function(){$('.main_tit_tit').fadeIn();});

		}else{
			$('#jQuery01 .text_box_right>div>strong').slideUp(1000);
			$('#jQuery01 .text_box_right>div>p').slideUp(1000);
			$('#jQuery01 .main_tit_bar').slideUp(1000, function(){$('#jQuery01 .main_tit_tit').fadeOut();});
			//$('.main_tit_bar').animate({height:0}
			//,function(){$('.main_tit_tit').fadeOut();});
		}
	});
	// 03 鍮꾨뵒??
	$(window).scroll(function(){
		var sct=$(window).scrollTop();
		var hello=$('#adaptive01').offset();
		
		if(sct>hello.top-200){			
			$('#adaptive01 .text_box_left>div>strong').slideDown(1000);
			$('#adaptive01 .text_box_left>div>p').slideDown(1000);
			$('#adaptive01 .main_tit_bar').slideDown(500, function(){$('#adaptive01 .main_tit_tit').fadeIn();});
			//$('.main_tit_bar').animate({height:253}
			//,function(){$('.main_tit_tit').fadeIn();});

		}else{
			$('#adaptive01 .text_box_left>div>strong').slideUp(1000);
			$('#adaptive01 .text_box_left>div>p').slideUp(1000);
			$('#adaptive01 .main_tit_bar').slideUp(1000, function(){$('#adaptive01 .main_tit_tit').fadeOut();});
			//$('.main_tit_bar').animate({height:0}
			//,function(){$('.main_tit_tit').fadeOut();});
		}
	});
	
	// 鍮꾨뵒??
	
	$(window).scroll(function(){
		var sct=$(window).scrollTop();
		var hello=$('#video').offset();
		
		if(sct>hello.top-200){			
			$('#video .text_box_right>div>strong').slideDown(1000);
			$('#video .text_box_right>div>p').slideDown(1000);
			$('#video .main_tit_bar').slideDown(1000, function(){$('#video .main_tit_tit').fadeIn();});
		}else{
			$('#video .text_box_right>div>strong').slideUp(1000);
			$('#video .text_box_right>div>p').slideUp(1000);
			$('#video .main_tit_bar').slideUp(1000, function(){$('#video .main_tit_tit').fadeOut();});
			//$('.main_tit_bar').animate({height:0}
			//,function(){$('.main_tit_tit').fadeOut();});
		}
	});
	
	$(window).scroll(function(){
		var sct=$(window).scrollTop();
		var hello=$('#mobile').offset();
		
		if(sct>hello.top-200){			
			$('#mobile .text_box_right>div>strong').slideDown(1000);
			$('#mobile .text_box_right>div>p').slideDown(1000);
			$('#mobile .main_tit_bar').slideDown(1000, function(){$('#mobile .main_tit_tit').fadeIn();});
		}else{
			$('#mobile .text_box_right>div>strong').slideUp(1000);
			$('#mobile .text_box_right>div>p').slideUp(1000);
			$('#mobile .main_tit_bar').slideUp(1000, function(){$('#mobile .main_tit_tit').fadeOut();});
			//$('.main_tit_bar').animate({height:0}
			//,function(){$('.main_tit_tit').fadeOut();});
		}
	});
	
	
	
	
});








