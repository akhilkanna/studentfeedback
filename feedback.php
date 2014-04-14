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
$sql="SELECT `id`,`subName` FROM `$db_name`.`faculty` WHERE `semester`='$sem' AND `sec`='$sec' AND `department`='$department'";
$query=mysql_query($sql);
?>
<?php require_once("required_files/header.php"); ?>
<?php while ($data=mysql_fetch_object($query)) {
	$listIDs[]=$data->id;
	$listSubName[]=$data->subName;
}
$parameters=array("cos"=>"Coverage of Syllabus","tc"=>"Tutorials Conducted","qps"=>"Old Question Papper Solved","sspe"=>"Student Seminars Presentation Encouraged","caws"=>"Counselling Acedemically Weak Students");
$row="<tr><th>Parameters</th><th>";
$data=implode("</th><th>",$listSubName);
$row=$row.$data."</th></tr>";
?>
<form action="feedbackstore.php" method="POST">
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
<tr><td colspan="8" align="right">Verify that the data you entered is correct and then click next</td>
<td><input type="submit" value="Next >>" class="btn btn-default btn-login"></td></tr>
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