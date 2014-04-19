<?php
	require_once("required_files/config.php");
	require_once("classes/auth.class.php");
	if(!isset($_COOKIE['username'],$_COOKIE['password'])){
		header("location:adminlogin.php?error=notLoggedIn");
		die();
	}
	authenticate::$db_host=$db_host;
	authenticate::$db_user=$db_user;
	authenticate::$db_pass=$db_pass;
	authenticate::$db_name=$db_name;
	authenticate::$username=$_COOKIE['username'];
	authenticate::$password=$_COOKIE['password'];
	$a=authenticate::check();
	if($a!=true){
		header("location:adminlogin.php?error=notLoggedIn");
		die();
	}else{?>
	<?php $title="Admin >> Disable group"; require_once("required_files/header.php"); ?>
	<?php
	$sql="SELECT department,semester,section,enabled FROM `$db_name`.`students` GROUP BY department,semester,section ORDER BY semester;";
	$con=mysql_connect($db_host,$db_user,$db_pass);
	$query=mysql_query($sql);
	?>
	<div class="container">
		<form action="ajax/edclass.php">
			<table class="table">
				<tr> <td>Department</td> <td>Semester</td> <td>Section</td> <td>Enabled</td> </tr>
				<?php while ($data=mysql_fetch_object($query)) {
					$value=$data->department."&".$data->semester."&".$data->section;
					$checked=($data->enabled=="true")?"checked":"";
					$input="<input onchange='degroup(this)' type='checkbox' echo $checked name='disable[]' value='$value'>";
					echo "<tr> <td> $data->department </td> <td> $data->semester </td> <td> $data->section </td> <td>$input</td></tr>";
				} ?>
			</table>
		</form>
	</div>
	<script type="text/javascript" language="javascript" src="admin.js"></script>
	<?php require_once("required_files/footer.php"); ?>
	<?php
	}

?>