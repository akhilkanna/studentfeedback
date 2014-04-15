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
	function getFullParameter($param){
		switch ($param) {
			case 'cos':
				return 'Coverage Of Syllabus';
				break;
			
			case 'tc':
				return 'Tutorials Conducted';
				break;

			case 'qps':
				return 'Old Question Papper Solved';
				break;

			case 'sspe':
				return 'Student Seminar Presentation Encouraged';
				break;

			case 'caws':
				return 'Counselling Acedemically Weak Students';
				break;



			default:
				break;
		}
		return $param;
	}
	if($a!=true){
		header("location:index.php?error=notLoggedIn");
		die();
	}
	$dept=mysql_real_escape_string($_GET['dept']);
	$sem=mysql_real_escape_string($_GET['sem']);
	$sec=mysql_real_escape_string($_GET['sec']);
	$teacher=(isset($_GET['faculty']))?mysql_real_escape_string($_GET['faculty']):"";
	$con=mysql_connect($db_host,$db_user,$db_pass)or die(mysql_error());
	$faculty_name=mysql_fetch_object(mysql_query("SELECT `name` FROM `$db_name`.`faculty` WHERE id='$teacher';"))or die("<div class='alert alert-danger text-center'><strong>Seems like this department doesn't contain this section!</strong></div>");
	$faculty_name=$faculty_name->name;
	$sql="SELECT SUM(value) AS total,parameter,count(parameter) AS count FROM `$db_name`.`faculty`,`$db_name`.`teacherRating` WHERE department = '$dept' AND semester = '$sem' AND teacherRating.teacher=faculty.id AND `faculty`.`id`='$teacher' GROUP BY parameter;";
	$query=mysql_query($sql)or die();
	$html="<table class='table'>";
	$html=$html."<tr><th colspan='4'>$faculty_name</th></tr>";
	$html=$html."<tr><th>Parameter</th><th>Secured Score</th><th>Total</th><th>Percentage</th></tr>";
	while($data=mysql_fetch_object($query)){
		$html=$html."<tr><th>".getFullParameter($data->parameter)."</th><td>".$data->total."</td><td>".(($data->count)*5)."</td><td>".floor((($data->total)/($data->count*5))*100)."</td></tr>";
	}
	$html=$html."</table>";
	echo $html;
?>