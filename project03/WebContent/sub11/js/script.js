jQuery(document).ready(function(){
	var tbody = $('.nbContent');
	var class_closed = 'closed';
	tbody.each(function(){
		var dl = $(this)
		var allDt = dl.find('.contentTit');
		var allDd = dl.find('.contentWrap');
		function closeAll(){
			allDt.addClass(class_closed);
			allDd.addClass(class_closed);
		}
		function open(dt, dd){ // var dt = dt, dd = dd
			dt.removeClass(class_closed);
			dd.removeClass(class_closed);

		}
		closeAll();
		
		allDt.click(function(){
			var dt = $(this);
			var dd = dt.next();
			closeAll();
			open(dt, dd);
		})
	});
});