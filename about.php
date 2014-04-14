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
								<span class="center lead">Nishchal Gautam</span><br>
								<div class="row">
									<div class="col-sm-6">
										Passionate Web Developer<br>
										Enthusiastic Entrepreneur<br>
										<blockquote class="blockquote blockquote-reverse"><p>When Technology Becomes Passion</p></blockquote>
										<span class="small">connect with me : </span><br>
										<br><a href="https://www.facebook.com/cyberkiller.nishchal" target="_blank"><img class="social" src="img/facebook.ico" alt=""></a>
									    <a href="https://plus.google.com/+NishchalGautam " target="_blank"><img class="social" src="img/google.ico" alt=""></a>
									    <a href="https://www.twitter.com/nishchal_619 " target="_blank"><img class="social" src="img/twitter.ico" alt=""></a>
									    <a href="skype:nishchal.gautam?call" target="_blank"><img class="social" src="img/skype.ico" alt=""></a>
									</div>
									<div class="col-sm-6"><img class="img-circle pull-right" src="img/nishchal.jpg"></div>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							right container
						</div>
					</div>
				</div>
			</div>
		</div>
</div>			

<?php require_once('required_files/footer.php'); ?>
