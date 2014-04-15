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
			break;
		case 'c':
			header("location:about.php?msg=completed");
		default:
			break;
	}
}
if(isset($_POST['submit'])){
	$feedback=mysql_real_escape_string($_POST['feedback']);
	mysql_query("INSERT INTO `$db_name`.`feedbackStudents` (id,usn,message) VALUES (NULL,md5($usn),'$feedback');") or die(mysql_error());
	mysql_query("UPDATE `$db_name`.`tracker` SET formSub='c' WHERE usn='$usn'");
	header("location:about.php?msg=completed");
}else{

?>
<?php require_once("required_files/header.php"); ?>
<div class="container">
	<p class="text-info">Time to be honest, What do you think this college should improve? If there any suggestions then please let us know, we (developers of this form) assure you that your privacy won't be compromised. We won't display your information to anyone.</p>
	<p class="lead text-info">Feel free to post honest feedback but don't use a hate speech. We (developers) respect your privacy unless you use hate speech.</p>
	<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
		<textarea name="feedback" class="form-control" style="margin-bottom:20px;" placeholder="Enter your message here." id="textarea" cols="90" rows="10"></textarea>
		<p>
			<input type="submit" name="submit" class="btn btn-primary btn-login" value="Share the Feed">
		</p>
	</form>
</div>

<?php require_once("required_files/footer.php"); ?>
<?php
}
?>