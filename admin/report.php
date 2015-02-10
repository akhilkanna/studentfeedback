<?php
	require_once("../required_files/config.php");
	require_once("../classes/auth.class.php");
	if(isset($_COOKIE['username'],$_COOKIE['password'])){
	authenticate::$db_host=$db_host;
	authenticate::$db_user=$db_user;
	authenticate::$db_pass=$db_pass;
	authenticate::$db_name=$db_name;
	authenticate::$username=$_COOKIE['username'];
	authenticate::$password=$_COOKIE['password'];
	$a=authenticate::check();
	if($a!=true){
		header("location:index.php?error=notLoggedIn");
		die();
	}
}else{
	header("location:/admin");
}
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="shortcut-icon" href="feedback.jpg">
	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/styles.css">
	<script type="text/javascript" language="javascript" src="/jquery.js"></script>
	<script type="text/javascript" language="javascript" src="/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="head" style="font-size:28px;">Sri Venkateshwara College of Engineering</div>
	<div class="head subtitle">Department of CSE/ISE</div>

	<div class="jumbotron">
		<div class="row">
			<table class="table">
				<tr>
					<th>Name</th>
					<th>Subject</th>
					<th>Department</th>
					<th>Semester</th>
					<th>Section</th>
					<th>Handwriting &amp; Usage of board</th>
					<th>Interest shown by teacher in subject and body language</th>
					<th>Technical knowledge with coverage of syllabus</th>
					<th>Ability of teacher for clarification and discussion</th>
					<th>Planning and time management</th>
					<th>Overall Percentage</th>
				</tr>
				<?php
				if(isset($_GET['sem'],$_GET['department'],$_GET['section'])){
					$sem=strtoupper(mysql_real_escape_string($_GET['sem']));
					$department=strtoupper(mysql_real_escape_string($_GET['department']));
					$section=strtoupper(mysql_real_escape_string($_GET['section']));
					$sql="SELECT * FROM `$db_name`.`faculty` WHERE semester='$sem' AND sec='$section' AND department='$department' ORDER BY semester,sec,department;";
				}else{
					$sql="SELECT * FROM `$db_name`.`faculty` ORDER BY semester,sec,department;";					
				}
					$con=mysql_connect($db_host,$db_user,$db_pass);
					$query=mysql_query($sql) or die(mysql_error());
					while($data=mysql_fetch_object($query)){
						$html="<tr><td>".$data->name."</td><td>".$data->subName."</td><td>".$data->department."</td><td>".$data->semester."</td><td>".$data->sec."</td>";
						$htmlclean=$html;
						$sql1="SELECT SUM(value) AS total,faculty.department,faculty.sec,faculty.semester,parameter,count(parameter)*5 AS count FROM `$db_name`.`faculty`,`$db_name`.`teacherRating` WHERE teacherRating.teacher=faculty.id AND `faculty`.`id`='$data->id' GROUP BY parameter;";
						$query1=mysql_query($sql1)or die(mysql_error());
						$overall=0;
						while ($data1=mysql_fetch_object($query1)) {
							$total=$data1->total;
							$count=$data1->count;
							$perc=floor(($total/$count)*100);
							$overall+=$perc;
							$htmlclean=$htmlclean."<td>$perc</td>";
							$html=$html."<td>(".$total."/$count)*100=$perc</td>";
						}
						$overall=$overall/5;
						if(isset($_GET['format'])){
							if($overall!=0){
								echo $htmlclean."<th>$overall</th></tr>";
							}
						}else{
							if($overall!=0)
								echo $html."<th>$overall</th></tr>";
						}
						

					}
				?>

<!--   SELECT SUM(value) AS total,faculty.department,faculty.sec,faculty.semester,parameter,count(parameter)*5 AS count FROM `feedback`.`faculty`,`feedback`.`teacherRating` WHERE teacherRating.teacher=faculty.id AND `faculty`.`id`='204' GROUP BY parameter; -->

				
			</table>
		</div>
	</div>
<div class="lead text-center">
	<p class="lead">Developed by department of CSE/ISE</p>
</div>