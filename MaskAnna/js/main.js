$(function () {
	initScene3();
	function initScene3(){
		var $container = $('#scene-3'), //�����̳�
		$masks = $container.find('.mask'), //����ũ
		$lines = $masks.find('.line'), //���
		maskLength = $masks.length, // ����ũ�� ����
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
		},'.mask'); //.mask�� this�� ������
		
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
					//���콺������ ����ũ���� ������ ����ũ�� ������ǥ(����ũ�� ���� X ��ǥ)
					//i = 0(1��°) w(1600*0.6 = 960 = l ����ũ ���� x ��ǥ)
					//i = 1(2��°) w(1600*0.7 = 1120 = l ����ũ ���� x ��ǥ)
					//i = 2(3��°) w(1600*0.8 = 1280 = l ����ũ ���� x ��ǥ)
					//i = 3(4��°) w(1600*0.9 = 1440 = l ����ũ ���� x ��ǥ)
				} else {
					l = w * 0.1 * i;
					//i = 0(1��°) w(1600) * 0 = 0
					//i = 1(2��°) w(1600) * 0.2 = 160
					//i = 2(3��°) w(1600) * 0.3 = 320
					//i = 3(4��°) w(1600) * 0.4 = 480
				}
				
				$(maskData[i]).stop(true).animate({left: l},{duration:1000,easing:'easeOutQuart',
					progress:function(){
						var now = this.left;
						$this.css({clip:'rect(0px '+w+'px '+h+'px '+now+'px)'}) //����ũ�� y x �������� ����
						$this.find($lines).css({left:now});
					}/* progress */
				});/* $(maskData[i]) */
			});/* $masks.each */
		};/* resizeMask */
	}/* initScene3 */

});















