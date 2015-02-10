<?php
if(!(isset($_COOKIE['usn'],$_COOKIE['sec'],$_COOKIE['sem'],$_COOKIE['department']))){
	header("location:studentlogin.php?error=loginRequired");
	die();
}
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
			header("location:feedback2.php");
			break;
		case 'b':
			header("location:feedback3.php");
			break;
		case 'c':
			header("location:about.php?msg=completed");
		default:
			break;
	}
}
if(isset($_POST['submit'])){
	$cos=$_POST['cos'];
	$tc=$_POST['tc'];
	$qps=$_POST['qps'];
	$sspe=$_POST['sspe'];
	$caws=$_POST['caws'];
	if(array_search("", $cos)||array_search("", $tc)||array_search("", $qps)||array_search("", $sspe)||array_search("", $caws)){
		header("location:feedback.php?error=true");
		die();
	}
	$connection=mysql_connect($db_host,$db_user,$db_pass);
	$sql="INSERT INTO `$db_name`.`teacherRating` (id,teacher,parameter,value) VALUES";
	$values="";
	foreach ($cos as $key=>$value) {
		$values=$values."(NULL,'$key','cos','$value')";
	}
	foreach ($tc as $key=>$value) {
		$values=$values."(NULL,'$key','tc','$value')";
	}
	foreach ($qps as $key=>$value) {
		$values=$values."(NULL,'$key','qps','$value')";
	}
	foreach ($sspe as $key=>$value) {
		$values=$values."(NULL,'$key','sspe','$value')";
	}
	foreach ($caws as $key=>$value) {
		$values=$values."(NULL,'$key','caws','$value')";
	}
	$values=str_replace(")(", "),(", $values);
	$sql=$sql.$values;
	mysql_query($sql);
	mysql_query("INSERT INTO `$db_name`.`tracker` (id,usn,formSub) VALUES (NULL,'$usn','a');")or die(mysql_error());
	header("location:feedback2.php");
}else{
$sql="SELECT `id`,`subName` FROM `$db_name`.`faculty` WHERE `semester`='$sem' AND `sec`='$sec' AND `department`='$department'";
$query=mysql_query($sql)or die(mysql_error());
?>
<?php $title="Feedback Form 1"; require_once("required_files/header.php"); ?>
	<div class="container">
		<div class="pull-right">
			Welcome, <?php $usn=mysql_real_escape_string($_COOKIE['usn']);echo $usn;
				$sql1="SELECT * FROM `$db_name`.`students` WHERE usn='$usn';";
				$con=mysql_connect($db_host,$db_user,$db_pass);
				$query1=mysql_query($sql1);
				$data=mysql_fetch_object($query1);
				echo "<br>".$data->name;
				echo "<br>".$data->department."<br>";
			?>
		</div>
	</div>
<a href="logout.php" class="col-sm-offset-1 btn btn-warning" style="margin-bottom:20px;">Logout</a>
<?php while ($data=mysql_fetch_object($query)) {
	$listIDs[]=$data->id;
	$listSubName[]=$data->subName;
}
$parameters=array("cos"=>"Handwriting &amp; Usage of board","tc"=>"Interest shown by teacher in subject and body language","qps"=>"Technical knowledge with` coverage of syllabus","sspe"=>"Ability of teacher for clarification and discussion","caws"=>"Planning and time management");
$row="<tr><th>Parameters</th><th>";
$data=implode("</th><th>",$listSubName);
$row=$row.$data."</th></tr>";
?>
<?php if(isset($_GET['error'])){
	echo "<div class='alert alert-danger'>You can't leave a field blank</div>";
	} ?>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
<table class="table feedback table-striped table-hover" style="background:#EFEFEF;">
	<?php echo $row; ?>
	<?php foreach ($parameters as $short => $full) {
		$b="";
		foreach ($listIDs as $value) {
			$b=$b."<td><div class='score' data-name='".$short."[".$value."]"."'></div></td>";
		}
		$a="<tr><td>".$full."</td>";
		echo $a.$b."</tr>";
	} ?>
<tr><td colspan="8" style="vertical-align:middle;" align="right">Verify that the data you entered is correct and then click next</td>
<td><input name="submit" type="submit" value="Next >>" class="btn btn-default btn-login"></td></tr>
</table>
</form>
<script type="text/javascript" language="javascript" src="raty/lib/jquery.raty.js"></script>
<script>

$(document).ready(function() {
	$.each($('.score'), function(index, val) {
		$this=$(this);
		name=$this.data('name');
		$this.raty({scoreName:name,hints:['poor','satisfactory','good','very good','excellent'],size:24});
	});
	$(".score img").tooltip();
	$("td div img").css("width","20px").css("height","20px").parent().css("width","120px")
});

</script>
<?php require_once("required_files/footer.php"); ?>
<?php
}
?>