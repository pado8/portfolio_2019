// 숫자 자릿수 나누기
function unit(x){ //1의 자리 숫자
	var m = x%10
	return m
}
function tenth(y){ //10의 자리 숫자
	var m = y/10%10
	m = Math.floor(m)
	return m
}
function hund(v){ //100이상의 자리 숫자
	var m = v/100
	m = Math.floor(m)
	return m
}
// 카운트 함수 정의 
function ddaycount(){
	//숫자 이미지 배열
	imgArr = [
		'images/num0.jpg',
		'images/num1.jpg',
		'images/num2.jpg',
		'images/num3.jpg',
		'images/num4.jpg',
		'images/num5.jpg',
		'images/num6.jpg',
		'images/num7.jpg',
		'images/num8.jpg',
		'images/num9.jpg'
	]
	doomsday = new Date('May 7, 2020 00:00:00')
	today = new Date()
	howfar = doomsday - today
	if(howfar > 0) {
		setTimeout('ddaycount()', 1000)
	}else{
		clearTimeout('ddaycount()')
		document.getElementById('countment').innerHTML='불꽃축제가 끝났습니다.'
		return false
	}
	days = Math.floor(howfar/(1000*60*60*24))
	hours = Math.floor(howfar/(1000*60*60))
	mins = Math.floor(howfar/(1000*60))
	secs = Math.floor(howfar/(1000))
	
	d = days
	h = hours-days*24
	m = mins-hours*60
	s = secs-mins*60
	
	document.getElementById('day100').setAttribute('src', imgArr[hund(d)])
	document.getElementById('day10').setAttribute('src', imgArr[tenth(d)])
	document.getElementById('day1').setAttribute('src', imgArr[unit(d)])
	document.getElementById('hour10').setAttribute('src', imgArr[tenth(h)])
	document.getElementById('hour1').setAttribute('src', imgArr[unit(h)])
	document.getElementById('min10').setAttribute('src', imgArr[tenth(m)])
	document.getElementById('min1').setAttribute('src', imgArr[unit(m)])
	document.getElementById('sec10').setAttribute('src', imgArr[tenth(s)])
	document.getElementById('sec1').setAttribute('src', imgArr[unit(s)])
	if(d<10){d='00'+d}else if(d<100){d='0'+d}
	if(h<10){h='00'+h}
	if(m<10){m='00'+m}
}