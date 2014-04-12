<?php
	require_once("../required_files/config.php");
	$id=mysql_real_escape_string($_POST['id']);
	$con=mysql_connect($db_host,$db_user,$db_pass);
	$query=mysql_query("DELETE FROM `$db_name`.`faculty` WHERE id=$id");
	if($query){
		echo "Success";
	}else{
		echo "Fail";
	}
?>