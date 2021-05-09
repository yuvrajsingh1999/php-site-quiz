<?php
session_start();
include 'components/navbar.php';
?>
		<section class="login first grey" style="background-image: url('img/book.png');  background-size: cover; height: 75vh; margin-top:90px;">
			<div class="container">
				<div class="box-wrapper">				
					<div class="box box-border">
						<div class="box-body text-white">
							<center> <h5 style="font-family: Noto Sans;" class="text-white">Register to </h5><h4 style="font-family: Noto Sans;" class="text-white">Online Quiz System</h4></center><br>
							<form method="post" action="register.php" enctype="multipart/form-data">
                                <div class="form-group">
									<label>Username:</label>
									<input type="text" name="username" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Email Id:</label>
									<input type="email" name="email" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Password:</label>
									<input type="password" name="password" class="form-control" required />
                                </div>
								<div class="form-group">
									<label>College Name:</label>
									<input type="text" name="college" class="form-control" required />
								</div>
                                
								<div class="form-group text-right">
									<button class="btn btn-primary btn-block" name="submit">Register</button>
								</div>
								<div class="form-group text-center ">
									<span class="">Already have an account! </span> <a href="login-form.php">Login </a> Here..
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
<?php
include 'components/footer.php';
?>