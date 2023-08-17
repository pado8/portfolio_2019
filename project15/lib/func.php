<?php
	function latest_article($table, $loop, $char_limit){
		require_once("./lib/MYDB.php");
		$pdo = db_connect();
		try{
			$sql="select * from pado008.$table order by num desc limit $loop";
			$stmh = $pdo->query($sql);
			
			while($row = $stmh->fetch(PDO::FETCH_ASSOC))
			{
				$num=$row["num"];
				$len_subject=strlen($row["subject"]);//제목글자가 몇 글자야?
				$subject=$row["subject"];
				
				if($len_subject>$char_limit){//제목글자수가 
					$subject=mb_substr($row["subject"], 0, $char_limit, 'utf-8');//대상문자열,첫번째글자,마지막 글자수,한글
					$subject=$subject."...";
				}
				
				$regist_day=substr($row["regist_day"], 0, 10);
				//$table에 각각의 폴더 이름이랑 같음
				echo("
					<div class='col1'>
						<a href='./$table/view.php?num=$num'>$subject</a>
					</div>
					<div class='col2'>$regist_day</div>
					<div class='clear'></div>
				");
			}
		} catch (PDOException $Exception){
			print "오류:".$Exception->getMessage();
		}
	}
?>