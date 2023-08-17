<?php
function db_connect(){     	//DB연결을 함수로 정의
	$db_user ="pado008"; 		//추가한 계정이름(사용자명)
	$db_pass ="xo9235xo!!"; //비밀번호
	$db_host ="localhost"; 
	$db_name ="pado008";
	$db_type ="mysql";
    $dsn ="$db_type:host=$db_host;db_name=$db_name;charset=utf8";

    try{ 
        $pdo=new PDO($dsn,$db_user,$db_pass);  
		
        $pdo=new PDO($dsn,$db_user,$db_pass,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));  
        $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);  
        $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES,FALSE);
		$pdo->exec("SET NAMES utf8");
		$pdo->exec("set session character_set_connection=utf8");
		$pdo->exec("set session character_set_results=utf8");
		$pdo->exec("set session character_set_client=utf8");
    } catch (PDOException $Exception) {  
        die('오류:'.$Exception->getMessage());
    }
    return $pdo;
}
?>