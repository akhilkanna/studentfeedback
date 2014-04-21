<?php
	require_once("../required_files/config.php");
	$con=mysql_connect($db_host,$db_user,$db_pass);
	$check=$_POST['enable'];
	$value=$_POST['values'];
	$values=explode("&", $value);
	$department=mysql_real_escape_string($values[0]);
	$semester=mysql_real_escape_string($values[1]);
	$section=mysql_real_escape_string($values[2]);
	$sql="UPDATE `$db_name`.`students` SET enabled='$check' WHERE department='$department' AND semester='$semester' AND section='$section' ";
	$con=mysql_connect($db_host,$db_user,$db_pass);
	if(mysql_query($sql)){
		echo "success";
	}else{
		echo "fail".mysql_error();
	}
?>