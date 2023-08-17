jQuery(document).ready(function(){
	var tbody = $('.nbContent');
	$.getJSON('data.json',function(people){
		$.each(people, function(i,person){
			var text_no=person.no;
			var text_kind=person.kind;
			var text_title=person.title;
			var text_count=person.count;
			var text_date=person.date;
			var text_contents=person.contents;
			var list = $('<div class="content cf">');
			var dt = $('<div class="contentTit">');
			var dd = $('<div class="contentWrap">');
			var no = $('<div/>').text(text_no);
			var kind = $('<div/>').text(text_kind);
			var title = $('<div class="title" />').text(text_title);
			var count = $('<div/>').text(text_count);
			var date = $('<div/>').text(text_date);
			var contents = $('<div class="contww"/>').html(text_contents);
			dt.append(no);
			dt.append(kind);
			dt.append(title);
			dt.append(count);
			dt.append(date);
			dd.append(contents);
			list.append(dt);
			list.append(dd);
			
			tbody.append(list);
			tbody.append(list);
		});
		
	var class_closed = 'closed';
		$('.nbContent').each(function(){
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
});