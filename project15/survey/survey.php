<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++"/>
	<meta name="Author" content="노태효"/>
	<meta name="keywords" content="KFC, 노태효, 포트폴리오, 노태효 포트폴리오, portfolio,kfc portfolio" />
	<meta name="Description" content="KFC 포트폴리오 페이지에 오신 것을 환영합니다"/>
	<link rel="shortcut icon" href="../favicon/favicon.ico"> <!-- 파비콘 -->
	<link rel="apple-touch-icon-precomposed" href="apple-icon.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-icon-114x114.png">
	<title>설문조사</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/base.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/main.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/survey.css" media="all" />
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap&subset=korean" rel="stylesheet">
	<script>
		function update(){
			var vote;
			var length=document.survey_form.composer.length;
			
			for(var i=0; i<length; i++){
				if(document.survey_form.composer[i].checked==true){
					vote=document.survey_form.composer[i].value;
					break;
				}
			}
			
			if(i==length){
				alert("문항을 선택하세요!");
				return;
			}
			
			window.open("update.php?composer="+vote, "", "left=200, top=200, width=300, height=300, status=no, scrollbars=no");
			window.close();
		}
		
		function result(){
			window.open("result.php?composer="+vote, "", "left=200, top=200, width=300, height=300, status=no, scrollbars=no");
			window.close();
		}
	</script>
</head>
<body>
	<form action="" name="survey_form" method="post">
		<table border="0" cellspacing="0" cellpadding="0">
			<input type="hidden" name="kkk" value="100"/>
			<tr height="40">
				<td><img src="../img/bbs_poll.gif" alt="poll"/></td>
			</tr>
			<tr height="1" bgcolor="#cccccc"><td></td></tr>
			<tr height="7"><td></td></tr>
			<tr><td><b>가장 좋아하는 햄버거 메뉴는?</b></td></tr>
			<tr><td><input type="radio" name="composer" value="ans1"/>1.  오리지널 타워버거</td></tr>
			<tr height="5"><td></td></tr>
			<tr><td><input type="radio" name="composer" value="ans2"/>2.  트리플리치 오리지널버거</td></tr>
			<tr height="5"><td></td></tr>
			<tr><td><input type="radio" name="composer" value="ans3"/>3.  징거더블 다운맥스버거</td></tr>
			<tr height="5"><td></td></tr>
			<tr><td><input type="radio" name="composer" value="ans4"/>4.  블랙라벨에그 타워버거</td></tr>
			<tr height="7"><td></td></tr>
			<tr height="1" bgcolor="#cccccc"><td></td></tr>
			<tr>
				<tr height="7"><td></td></tr>
				<tr id="button">
					<td align="middle"><a href="#" onclick="update()">투표하기</a><a href="#" onclick="window.close()">창닫기</a></td>
				</tr>
			</tr>
		</table>
	</form>
</body>
</html>