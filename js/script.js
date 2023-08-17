$(document).ready(function(){
/* 	$('a.gallery').colorbox(); */

	var options = { 
	'speed' : 500, 
	// 스피드
	'initTop': 250, 
	// 기본 top 위치
	'alwaysTop' : false, 
	// 항상고정 true , false 이동
	'default_x' : '#contents' 
	//레어아웃이 가운데 정렬 일때 레이어가 붙는 아이디값
	}
	$('#floatdiv').Floater(options);
	
	$('#btn01').click(function(){
		$('html,body').animate({scrollTop:$('#main').offset().top-0},1000);
	});
	$('#btn02').click(function(){
		$('html,body').animate({scrollTop:$('#profile').offset().top-0},1000);
	});
	$('#btn03').click(function(){
		$('html,body').animate({scrollTop:$('#project1').offset().top-0},1000);
	});
	$('#btn04').click(function(){
		$('html,body').animate({scrollTop:$('#project2').offset().top-0},1000);
	});
	$('#btn05').click(function(){
		$('html,body').animate({scrollTop:$('#jQuery').offset().top-0},1000);
	});
	$('#btn06').click(function(){
		$('html,body').animate({scrollTop:$('#mask').offset().top-0},1000);
	});
	$('#btn07').click(function(){
		$('html,body').animate({scrollTop:$('#diary').offset().top-0},1000);
	});
	$('#btn08').click(function(){
		$('html,body').animate({scrollTop:$('#epilogue').offset().top-0},1000);
	});
	$('#btn09').click(function(){
		$('html,body').animate({scrollTop:$('#thankyou').offset().top-0},1000);
	});
	
	
	var menu = $('#menuWrap > ul > li');
	var contents = $('#contents > div');
	var btn = $('#floatdiv ul li');
	menu.click(function(event){
		event.preventDefault();
		var tg = $(this);
		var i = tg.index();
		var section = contents.eq(i);
		var tt = section.offset().top;
		$('html,body').stop().animate({scrollTop:tt});
		
	});
	$(window).scroll(function(){
		var sct = $(window).scrollTop();
		contents.each(function(){
		var tg = $(this);
		var i = tg.index();
		if(tg.offset().top <=sct){
			menu.removeClass('on');
			menu.eq(i).addClass('on');
			btn.removeClass('active');
			btn.eq(i).addClass('active');
			}
		});
	});
	
	
	var current = 1;//페이지 번호
	var thumbListSize = 4;
	var thumbnail = $('#graphicBox');
	var prev = thumbnail.find('> .left');
	var next = thumbnail.find('> .right');
	var graphicImg = thumbnail.find('> .graphicImg > ul');
	var graphicImgWidth = thumbnail.find('> .graphicImg').width();
	var thumb = graphicImg.find('> .thumb');
	var maxSize = thumb.size();
	var image = $('.graphicImgBox #graphicImage > p');
	
	listMove();
	
	next.on('click',function(){
		if(current < maxSize / thumbListSize -1) current++;
		listMove();
	});
	
	prev.on('click',function(){
		if(current > 0) current--;
		listMove();
	});
	
	function listMove(){
		var tl = graphicImgWidth * current * -1;
		graphicImg.stop().animate({left:tl},{duration:400, easing:'easeOutCubic'});
	}
	
	thumb.on('click',function(){
		image.css('display','none');
		var i = $(this).index();
		image.eq(i).css('display','block');
		
	});
	thumb.hover(function(){
		var tg = $(this);
		tg.css('opacity','0.3');
	},function(){
		var tg = $(this);
		tg.css('opacity','1');
		
	});
		
	/* 스킬바 */
	$(window).scroll(function(){
		var sct=$(window).scrollTop();
		var $content = $('.profile01'); 
		var $charts = $content.find('.skill');	
		
		if(sct >= 600 && sct <= 2000){
			activatePercent();
		}else{
			zeroPercent();
		};
		
		function activatePercent(){
			
			if($content.hasClass('active') == false){	
				$charts.each(function(i){
					var $chart = $(this);
					var $chartBar = $chart.find('.skill_g').css({width:'0%'});
					var $percentNumber = $chart.find('.skill_p .num');
					var percentData = $percentNumber.text();
					$percentNumber.text();
					$({percent:0}).delay(150*i).animate({percent:percentData},{
						duration: 3000,
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
					
				
				});
			};
			$content.removeClass('active');	
			$content.addClass('unactive');	
		};
	});	
	
	
	/* 포항시청 프로젝트 */
	
	$('.graphicTabLeft > div').click(function(){
			$('.graphicTabLeft > div').removeClass('onTap');
			$(this).addClass('onTap');
	});

	$('.graphicTab1').click(function(){
			$('.graphicWrap > div').removeClass('graphicBoxOn');
			$('.graphicImgBox1').addClass('graphicBoxOn');
			$('.graphicTab2').css({'border-right':'2px solid #d8dee4'});
			$('.graphicTab3').css({'border-right':'2px solid #d8dee4'});
	});
	$('.graphicTab2').click(function(){
			$('.graphicWrap > div').removeClass('graphicBoxOn');
			$('.graphicImgBox2').addClass('graphicBoxOn');
			$('.graphicTab1').css({'border-right':'none'});
			$('.graphicTab2').css({'border-right':'none'});
			$('.graphicTab3').css({'border-right':'2px solid #d8dee4'});
	});
	$('.graphicTab3').click(function(){
			$('.graphicWrap > div').removeClass('graphicBoxOn');
			$('.graphicImgBox3').addClass('graphicBoxOn');
			$('.graphicTab2').css({'border-right':'none'});
			$('.graphicTab3').css({'border-right':'none'});
			$('.graphicTab1').css({'border-right':'2px solid #d8dee4'});
	});
	$('.graphicTab4').click(function(){
			$('.graphicWrap > div').removeClass('graphicBoxOn');
			$('.graphicImgBox4').addClass('graphicBoxOn');
			$('.graphicTab3').css({'border-right':'none'});
			$('.graphicTab2').css({'border-right':'2px solid #d8dee4'});
			$('.graphicTab1').css({'border-right':'2px solid #d8dee4'});
	});
	
	
	$('.graphicTabLeft2 > div').click(function(){
			$('.graphicTabLeft2 > div').removeClass('onTap2');
			$(this).addClass('onTap2');
	});
	
	$('.graphicTab01').click(function(){
			$('.graphicWrap2 > div').removeClass('graphicBoxOn');
			$('.graphicImgBox01').addClass('graphicBoxOn');
			$('.graphicTab02').css({'border-right':'2px solid #d8dee4'});
			$('.graphicTab03').css({'border-right':'2px solid #d8dee4'});
	});
	$('.graphicTab02').click(function(){
			$('.graphicWrap2 > div').removeClass('graphicBoxOn');
			$('.graphicImgBox02').addClass('graphicBoxOn');
			$('.graphicTab01').css({'border-right':'none'});
			$('.graphicTab02').css({'border-right':'none'});
			$('.graphicTab03').css({'border-right':'none'});
	});
	$('.graphicTab03').click(function(){
			$('.graphicWrap2 > div').removeClass('graphicBoxOn');
			$('.graphicImgBox03').addClass('graphicBoxOn');
			$('.graphicTab02').css({'border-right':'none'});
			$('.graphicTab01').css({'border-right':'2px solid #d8dee4'});
			$('.graphicTab03').css({'border-right':'2px solid #3c4d5e'});
	});

	/* 크로싱 브라우저 */
	$('.browser').each(function(){
		
		var tg = $(this);
		tg.find(".bw_cont li").stop().fadeTo( 300 , 0.3);
		tg.find(".bw_cont li.on").stop().fadeTo( 300 , 1);	
		
		tg.find(".bw_cont li").mouseover(function(){			
			tg.find(".bw_cont li").stop().fadeTo( 300 , 0.3).removeClass("on");
			$(this).stop().fadeTo( 300 , 1);	
		});
		tg.find(".bw_cont li").mouseleave(function(){			
			tg.find(".bw_cont li").stop().fadeTo( 300 , 0.3).removeClass('on');
			tg.find(".ex").stop().fadeTo( 300 , 1).addClass('on');	
		});
	});
		
});