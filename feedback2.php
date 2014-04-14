<?php
if(!(isset($_COOKIE['usn'],$_COOKIE['sec'],$_COOKIE['sem'],$_COOKIE['department']))){
	header("location:studentlogin.php?error=loginRequired");
	die();
}?>
<?php
require_once("required_files/config.php");
$con=mysql_connect($db_host,$db_user,$db_pass);
$usn=mysql_real_escape_string($_COOKIE['usn']);
$sec=mysql_real_escape_string($_COOKIE['sec']);
$sem=mysql_real_escape_string($_COOKIE['sem']);
$department=mysql_real_escape_string($_COOKIE['department']);
$data=mysql_fetch_object(mysql_query("SELECT * FROM `$db_name`.`tracker` WHERE usn = '$usn';"));
if($data){
	$form=$data->formSub;
	switch ($form) {
		case 'a':
			break;
		case 'b':
			header("location:feedback3.php");
			break;
		case 'c':
			header("location:about.php?msg=completed");
		default:
			break;
	}
	if(isset($_POST['submit'])){
		$ventillation=mysql_real_escape_string($_POST['ventillation']);
		$powerSupply=mysql_real_escape_string($_POST['powerSupply']);
		$backup=mysql_real_escape_string($_POST['backup']);
		$classroom=mysql_real_escape_string($_POST['classroom']);
		$corridors=mysql_real_escape_string($_POST['corridors']);
		$toilets=mysql_real_escape_string($_POST['toilets']);
		$watersupply=mysql_real_escape_string($_POST['watersupply']);
		$environment=mysql_real_escape_string($_POST['environment']);
		$medical=mysql_real_escape_string($_POST['medical']);
		$transport=mysql_real_escape_string($_POST['transport']);
		if($ventillation=="" || $powerSupply=="" || $backup=="" || $classroom=="" || $corridors=="" || $toilets=="" || $watersupply=="" || $environment=="" || $medical=="" || $transport==""){
			header("location:feedback2.php?error=noFill");
			die();
		}
		$sql="INSERT INTO `$db_name`.`collegeRating` (id,parameter,value) VALUES (NULL,'ventillation','$ventillation'),(NULL,'powerSupply','$powerSupply'),(NULL,'backup','$backup'),(NULL,'classroom','$classroom'),(NULL,'corridors','$corridors'),(NULL,'toilets','$toilets'),(NULL,'watersupply','$watersupply'),(NULL,'environment','$environment'),(NULL,'medical','$medical'),(NULL,'transport','$transport')";
		mysql_query($sql,$con) or die(mysql_error());
		mysql_query("UPDATE `$db_name`.`tracker` SET formSub='b' WHERE usn='$usn'")or die(mysql_error());
		header("location:feedback3.php");
	}else{
}
?>
<?php require_once("required_files/header.php"); ?>
<div class="container">
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
<table class="table f2" style="background:#DEDEDE;">
	<tr>
		<th style="vertical-align:middle;" rowspan="3">Class Room Ambience</th><th>Ventillation</th> <td><div class="score" data-name="ventillation"></div></td> </tr> 
		<tr> <th>power supply</th> <td><div class="score" data-name="powerSupply"></div></td> </tr>
		<tr> <th>backup</th> <td><div class="score" data-name="backup"></div></td> </tr>
		 <tr> <th rowspan="3" style="vertical-align:middle;">Cleanliness</th> <th>Classrooms</th> <td><div class="score" data-name="classroom"></div></td> </tr>
		 <tr>  <th>Corridors</th> <td><div class="score" data-name="corridors"></div></td> </tr>
		 <tr>  <th>Toilets</th> <td><div class="score" data-name="toilets"></div></td> </tr>
		 <tr> <td rowspan="4"></td> <th>Water Supply</th> <td><div class="score" data-name="watersupply"></div></td> </tr>
		 <tr>  <th>Campus Environment</th> <td><div class="score" data-name="environment"></div></td> </tr>
		 <tr>  <th>Medical Facilities in Emergency</th> <td><div class="score" data-name="medical"></div></td> </tr>
		 <tr>  <th>Transport</th> <td><div class="score" data-name="transport"></div></td> </tr>
		 <tr>
		 	<td colspan="2" align="right" style="vertical-align:middle;">Click Next to continue</td>
		 	<td><input type="submit" name="submit" class="btn btn-info btn-login" value="Next >>"></td>
		 </tr>

</table>
</form>
</div>
<script type="text/javascript" language="javascript" src="raty/lib/jquery.raty.js"></script>
<script>
$(document).ready(function() {
	$.each($('.score'), function(index, val) {
		$this=$(this);
		name=$this.data('name');
		$this.raty({scoreName:name,hints:['poor','satisfactory','good','very good','excellent']});
	});
	$(".score img").tooltip();
});
</script>
<?php require_once("required_files/footer.php"); ?>
<?php
}
?>