$.fn.guide = function(){
	var guideClass = 'guide';
	$(this).each(function(){
		var guideText = this.defaultValue;
		// guideText = "이름을 입력해주세요."
		var element = $(this);
		element.focus(function(){
			if(element.val()===guideText){
				element.val('');
				element.removeClass(guideClass);
			};
		});
		element.blur(function(){
			if(element.val()===''){
				element.val(guideText);
				element.addClass(guideClass);
			};
		});
		if(element.val()===guideText){
			element.addClass(guideClass);
		};
	});
	return this;
};