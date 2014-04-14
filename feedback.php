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
			die("about.php?msg=completed");
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
	foreach ($cos as $key=>$value) {
		$sql1="INSERT INTO `$db_name`.`teacherRating` (id,teacher,parameter,value) VALUES(NULL,'$key','cos','$value');";
		mysql_query($sql1) or die(mysql_error());
	}
	foreach ($tc as $key=>$value) {
		$sql2="INSERT INTO `$db_name`.`teacherRating` (id,teacher,parameter,value) VALUES(NULL,'$key','tc','$value');";
		mysql_query($sql2) or die(mysql_error());
	}
	foreach ($qps as $key=>$value) {
		$sql3="INSERT INTO `$db_name`.`teacherRating` (id,teacher,parameter,value) VALUES(NULL,'$key','qps','$value');";
		mysql_query($sql3) or die(mysql_error());
	}
	foreach ($sspe as $key=>$value) {
		$sql4="INSERT INTO `$db_name`.`teacherRating` (id,teacher,parameter,value) VALUES(NULL,'$key','sspe','$value');";
		mysql_query($sql4) or die(mysql_error());
	}
	foreach ($caws as $key=>$value) {
		$sql5="INSERT INTO `$db_name`.`teacherRating` (id,teacher,parameter,value) VALUES(NULL,'$key','caws','$value');";
		mysql_query($sql5) or die(mysql_error());
	}
		mysql_query("INSERT INTO `$db_name`.`tracker` (id,usn,formSub) VALUES (NULL,'$usn','a');")or die(mysql_error());
	header("location:feedback2.php");
}else{
$sql="SELECT `id`,`subName` FROM `$db_name`.`faculty` WHERE `semester`='$sem' AND `sec`='$sec' AND `department`='$department'";
$query=mysql_query($sql)or die(mysql_error());
?>
<?php $title="Feedback Form 1"; require_once("required_files/header.php"); ?>
<a href="logout.php" class="col-sm-offset-1 btn btn-warning" style="margin-bottom:20px;">Logout</a>
<?php while ($data=mysql_fetch_object($query)) {
	$listIDs[]=$data->id;
	$listSubName[]=$data->subName;
}
$parameters=array("cos"=>"Coverage of Syllabus","tc"=>"Tutorials Conducted","qps"=>"Old Question Papper Solved","sspe"=>"Student Seminars Presentation Encouraged","caws"=>"Counselling Acedemically Weak Students");
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
		$this.raty({scoreName:name,hints:['poor','satisfactory','good','very good','excellent']});
	});
	$(".score img").tooltip();
});

/*
	$(document).ready(function() {
		$.each($('.score'), function(index, val) {
			$this=$(this)
			name=$this.data('name');
			$this.raty({scoreName:name,hints:['poor','satisfactory','good','very good','excellent']})
		});
		$("th div").tooltip({placement:"left"});
		$('.score img').tooltip();*/
		</script>
<?php require_once("required_files/footer.php"); ?>
<?php
}
?>