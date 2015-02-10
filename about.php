<?php if(isset($_GET['msg'])){setcookie("usn","",time()-3600,"/");} ?>
<?php require_once('required_files/header.php'); ?>
<div class="container">
	<?php if(isset($_GET['msg'])){ ?><div class="alert alert-success">You completed the survey and you can return. You are automatically logged out.</div><?php } ?>
		<div class="row">
			<div class="col-sm-12" style="margin:0 auto;">
				<div class="jumbotron">
					<p align="center" style="font-family:'acme'">About developers</p>
					<div class="row">
						<div class="col-sm-6">
							<div class="footer text-center">
								<p class="text-center lead">Nishchal Gautam</p><br>
								<div class="row">
									<div class="col-sm-6">
										<div>
											<small>Passionate Web Developer</small><br>
											Enthusiastic Entrepreneur<br>
										</div>
										<blockquote class="blockquote blockquote-reverse"><p class="text-center" style="font-family:acme; text-transform:capitalize;">"Let's make earth a better place to live in, lets save environment and use online forms"</p></blockquote><br><br>
										<span class="small">connect with me : </span><br>
										<br><a href="https://www.facebook.com/cyberkiller.nishchal" target="_blank"><img class="social" src="img/facebook.ico" alt=""></a>
									    <a href="https://plus.google.com/+NishchalGautam " target="_blank"><img class="social" src="img/google.ico" alt=""></a>
									    <a href="https://www.twitter.com/nishchal_619 " target="_blank"><img class="social" src="img/twitter.ico" alt=""></a>
									    <a href="skype:nishchal.gautam?call" target="_blank"><img class="social" src="img/skype.ico" alt=""></a>
									</div>
									<div class="col-sm-6"><img class="img-circle pull-right" style="height:150px;width:150px;" src="img/nishchal.jpg" /></div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 text-center">
								<p class="text-center lead">Sijan Shrestha</p><br>
								<div class="row">
									<div class="col-sm-4"><img class="img-circle pull-right " height="150" width="150" src="img/sijan.jpg" /></div>
									<div class="col-sm-8 ">
											Passionate coder<br>
											Debugging Ninja <br>
										<blockquote class="blockquote "><p class="text-center" style="font-family:acme;">"Don't Document The Problem,<br /> Fix It!"</p></blockquote>
										<span class="small">connect with me :</span><br>
										<br><a href="https://www.facebook.com/sijanshs" target="_blank"><img class="social" src="img/facebook.ico" alt=""></a>
									    <a href="https://plus.google.com/u/0/+SijanShresthaNepal" target="_blank"><img class="social" src="img/google.ico" alt=""></a>
									    <a href="https://twitter.com/sijan_shrestha" target="_blank"><img class="social" src="img/twitter.ico" alt=""></a>
									    <a href="skype:sidzanshrestha?call" target="_blank"><img class="social" src="img/skype.ico" alt=""></a>
									</div>
									
								</div>

						</div>
					</div>
				</div>
			</div>
		</div>
</div>			

<?php require_once('required_files/footer.php'); ?>
