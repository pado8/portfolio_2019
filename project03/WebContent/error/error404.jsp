<%@ page contentType = "text/html; charset=utf-8" %>  
<%@ page isErrorPage="true" %>
<html>
<head><title>404error</title>
	<style type="text/css">
		body{background:#F2F2F2; color:#374850; text-align:center;margin-bottom:100px;}
		.red{position:absolute; color:#F55555; font-size:10em;transform:rotate(-3deg);letter-spacing:-10px; z-index:3;}
		.gray{position: absolute;color: #cccccc;font-size: 10.1em;transform: rotate(-2.5deg);letter-spacing: -11px;left: 3px;top: -5px;}
		.textBox{position:relative; top:76px; left:50%; margin-left:-250px; width:500px; height:260px;} 
		.boxWrap{position:relative; width:540px; left:50%; margin-left:-270px; height:200px;} 
		.errorBox{position:absolute; width:500px; height:200px; background:#ffffff;  border-radius:50px; border-top:80px solid #F55555; padding:80px 0; z-index:5; top:0; left:0;}
		.errorBox1{position:absolute; width:500px; height:445px;  border-radius:50px; background:#cccccc; z-index:3; top:2px; left:5px; transform:rotate(1deg);}
		.mt100{display:block; margin-top:76	px;}
		.button{display:block; width:130px; height:60px; background:#f55555; margin:70px auto 30px;  border:1px solid #f22b2b; border-radius:10px; color:#F2F2F2; font-size:1.1em; letter-spacing:-2px; box-shadow:0 0 2px #f22b2b; cursor:pointer;}
	</style>
	<script>
		function button1_click() {
		location.href="<%= request.getContextPath() %>/index.jsp";
		}
	</script>

</head>
<body>
	<div class="wrap">
		<div class="textBox">
			<span class="red mt100">ERROR!</span>
			<span class="gray mt100">ERROR!</span>
		</div>
		
		<div class="boxWrap">	
			<div class="errorBox">			
				<span class="black strong"></span>			
				<strong>요청하신 페이지는 존재하지 않습니다.</strong> <br/><br/>	
			
			
			주소를 올바르게 입력했는지 확인해보시기 바랍니다.
			
			<input type="button" value="홈으로가기" class="button" onclick="button1_click()"/>
			
			</div>
			
			<div class="errorBox1"></div>
	
		</div>
	
	</div>
	
</body>  
</html>

<!--요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.요청한 페이지는 존제하지 않습니다.-->