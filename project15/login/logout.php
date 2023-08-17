<?php
	session_start();
	

	unset($_SESSION["userid"]);
	unset($_SESSION["name"]);
	unset($_SESSION["nick"]);
	unset($_SESSION["level"]);
?>	
<script>
	alert("로그아웃이 완료되었습니다.");
</script>	
<?php
	header("Location:../index.php");
?>