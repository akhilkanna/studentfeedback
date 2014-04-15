<?php
	require_once("../../required_files/config.php");
	require_once("../../classes/auth.class.php");
	authenticate::$db_host=$db_host;
	authenticate::$db_user=$db_user;
	authenticate::$db_pass=$db_pass;
	authenticate::$db_name=$db_name;
	authenticate::$username=$_COOKIE['username'];
	authenticate::$password=$_COOKIE['password'];
	$a=authenticate::check();
	if($a!=true){
		header("status:404");
		die();
	}
	$dept=$_GET['dept'];
	$sem=$_GET['sem'];
	$sec=$_GET['sec'];
	$con=mysql_connect($db_host,$db_user,$db_pass)or die(mysql_error());
	$sql="SELECT `id`,`name` FROM `$db_name`.`faculty` WHERE `semester`='$sem' AND `sec`='$sec' AND `department`='$dept'";
	$query=mysql_query($sql);
	$a="<p><select onchange='loadresult()' class='form-control' name='faculty'>";
	while($data=mysql_fetch_object($query)){
		$a=$a."<option value=".$data->id.">".$data->name."</option>";
	}
	$a=$a."</select></p>";
	echo $a;
?>