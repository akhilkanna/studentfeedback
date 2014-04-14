<?php $title="Welcome! Feedback form 3"; require_once('required_files/header.php'); ?>
	<div class="container">
		<div class="row">
			<div class="col-sm-12" style="margin:0 auto;">
				<div class="jumbotron">
					<p align="center" style="font-family:'acme'">Login using your University Serial Number</p>
					<div class="row">
						<div class="col-sm-6">
						<span class="text-danger" style="font-weight:bold;">Login from index page has been disabled, please use login page from navigation pane instead.</span>
						<form action="studentlogin.php" method="POST">
							<p><input type="text" name="usn" disabled class="form-control" placeholder="University Serial Number" style="width:400px;"></p><p><input disabled type="password" name="password" style="width:400px;" class="form-control" placeholder="Password"></p>
							<input type="submit" name="submit" class="btn btn-default btn-login">
						</form>
						</div>
						<div class="col-sm-6 text-muted" style="font-size:16px;"><span>Feel Free to submit the ratings honestly, we respect your privacy.</span>
							<span>The information about your USN is not available to anyone unless you use a hate speech.</span>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php require_once('required_files/footer.php'); ?>