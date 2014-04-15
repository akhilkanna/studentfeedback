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
<?php $title="Login Admin"; require_once('../required_files/header.php'); ?>
	<div align="center">
		<a href="collegeResult.php" >Part B</a> | <a href="studentfeedbacks.php">Student's Comments</a>
	</div>
	<div class="jumbotron">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1" style="display:none;" id="resultContainer"></div>
		</div>
		<div class="row">
			<div class="col-sm-4 col-sm-offset-3">
				<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET" id="form">
					<p>
						<select class="form-control" name="dept" id="dept" onchange="checkchange(this)">
							<option value="-1">Select Department</option>
							<option value="ISE">ISE</option>
							<option value="CSE">CSE</option>
							<option value="EEE">EEE</option>
							<option value="ECE">ECE</option>
							<option value="CIV">CIV</option>
							<option value="ME">ME</option>
						</select>
					</p>
					<p>
						<select name="sem" id="sem" class="form-control" onchange="checkchange(this)">
							<option value="-1">Select Semester</option>
							<option value="2">2</option>
							<option value="4">4</option>
							<option value="6">6</option>
							<option value="8">8</option>
						</select>
					</p>
					<p>
						<select name="sec" id="sec" onchange="checkchange(this)" class="form-control">
							<option value="-1">Section</option>
							<option value="A">A</option>
							<option value="B">B</option>
						</select>
					</p>
					<p id="cont"></p>
				</form>
			</div>
		</div>
	</div>
	<script>
		function loadresult(){
			$data=$("#form").serialize();
			$("#resultContainer").hide(20);
			$.ajax({
				url: 'ajax/getResult.php',
				type: 'GET',
				dataType: 'text',
				data:$data
			})
			.done(function(e) {
				$("#resultContainer").html(e).show(100);
				console.log(e);
			})
			.fail(function() {
				console.log("error");
			});
			
		}
		function checkchange(e){
			dept=$("#dept")[0].value;
			sem=$("#sem")[0].value;
			sec=$("#sec")[0].value;
			if(dept=="-1"||sem=="-1"||sec=="-1"){
				return false;
			}
			else{
				$data=$("#form").serialize();
				$.ajax({
					url: 'ajax/getfaculties.php',
					type: 'GET',
					dataType: 'text',
					data: $data,
				})
				.done(function(e) {
					$("#form p#cont").html(e);
					loadresult();
				})
				.fail(function() {
					console.log("error");
				});
				
			}
		}
	</script>
<?php require_once('../required_files/footer.php'); ?>