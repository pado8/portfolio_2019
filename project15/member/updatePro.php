<?php
	$id = $_REQUEST["id"];
	$pass = $_REQUEST["pass"];
	$name = $_REQUEST["name"];
	$nick = $_REQUEST["nick"];
	$hp1 = $_REQUEST["hp1"];
	$hp2 = $_REQUEST["hp2"];
	$hp3 = $_REQUEST["hp3"];
	$email1 = $_REQUEST["email1"];
	$email2 = $_REQUEST["email2"];
	$hp = $hp1."-".$hp2."-".$hp3;
	$email = $email1."@".$email2;
	$regist_day=date("Y-m-d H:i:s");
	
	require_once("../lib/MYDB.php");
	$pdo = db_connect();
	
	try{
		// update select delete 구문을 쓰기 위해서는 beginTransaction()이 선행되어야 함.
		$pdo->beginTransaction();
		$sql = "update pado008.member set pass=?, name=?, nick=?, hp=?, email=?, regist_day=? where id =?";
		$stmh =$pdo->prepare($sql); //준비
		$stmh -> bindValue(1,$pass,PDO::PARAM_STR);
		$stmh -> bindValue(2,$name,PDO::PARAM_STR);
		$stmh -> bindValue(3,$nick,PDO::PARAM_STR);
		$stmh -> bindValue(4,$hp,PDO::PARAM_STR);
		$stmh -> bindValue(5,$email,PDO::PARAM_STR);
		$stmh -> bindValue(6,$regist_day,PDO::PARAM_STR);
		$stmh -> bindValue(7,$id,PDO::PARAM_STR);
				
		$stmh -> execute();
		$pdo->commit();
		
		header("Location:../index.php");
	}  catch (PDOException $Exception){
		$pdo->rollBack();
		print "오류: ".$Exception -> getMassage();
	}
?>