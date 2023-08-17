$(function () {
	initScene3();
	function initScene3(){
		var $container = $('#scene-3'), //컨테이너
		$masks = $container.find('.mask'), //마스크
		$lines = $masks.find('.line'), //경계
		maskLength = $masks.length, // 마스크의 갯수
		maskData = [];
		$masks.each(function(i){
			maskData[i] = {left: 0};
		});
		$container.on({
			mouseenter:function(){
				resizeMask($(this).index());
			},
			mouseleave:function(){
				resizeMask(-1);
			}
		},'.mask'); //.mask가 this로 지정됨
		
		resizeMask(-1);
		function resizeMask(active){
			var w = $container.width(),
			h= $container.height();
			$masks.each(function(i){
				var $this = $(this),
				l;
				if(active === -1){
					l = w/maskLength * i;
					// l = 400 * i; 0 400 800 1200
				} else if(active < i){// (0<0) (0<1)1200 (0<2)1280 (0<3)1140
					l = w * (1-0.1*(maskLength-i))
					//마우스오버된 마스크보다 오른쪽 마스크의 기준좌표(마스크의 왼쪽 X 좌표)
					//i = 0(1번째) w(1600*0.6 = 960 = l 마스크 왼쪽 x 좌표)
					//i = 1(2번째) w(1600*0.7 = 1120 = l 마스크 왼쪽 x 좌표)
					//i = 2(3번째) w(1600*0.8 = 1280 = l 마스크 왼쪽 x 좌표)
					//i = 3(4번째) w(1600*0.9 = 1440 = l 마스크 왼쪽 x 좌표)
				} else {
					l = w * 0.1 * i;
					//i = 0(1번째) w(1600) * 0 = 0
					//i = 1(2번째) w(1600) * 0.2 = 160
					//i = 2(3번째) w(1600) * 0.3 = 320
					//i = 3(4번째) w(1600) * 0.4 = 480
				}
				
				$(maskData[i]).stop(true).animate({left: l},{duration:1000,easing:'easeOutQuart',
					progress:function(){
						var now = this.left;
						$this.css({clip:'rect(0px '+w+'px '+h+'px '+now+'px)'}) //마스크는 y x 영역으로 지정
						$this.find($lines).css({left:now});
					}/* progress */
				});/* $(maskData[i]) */
			});/* $masks.each */
		};/* resizeMask */
	}/* initScene3 */

});















