<?php
session_start();
include 'components/navbar.php';
?>
	<div class="container-fluid bg-light text-center" style=" margin-top:90px;">
	<?php
	if(isset($_SESSION['record']))
	{
	?>
		<div class="alert alert-success fas fa-check fade in" >
	    <strong>Success!</strong> <?php echo $_SESSION['record']; ?>
	</div>
	<?php
	}
	unset($_SESSION['record']);
	if(isset($_SESSION['error']))
	{
	?>
		<div class="alert alert-danger fas fa-exclamation fade in">
	    <strong>Error!</strong> <?php echo $_SESSION['error']; ?>
	</div>
	<?php
	}
	unset($_SESSION['error']);
?>
<div class="container-fluid" style="height:558px;background-image: url('img/book.png');  background-size: cover; height: 75vh;">
        <h2 class="text-white">Login</h2>
		<form action="login.php" method="post" class="form-horizontal p-3 text-center text-white">
        <div class="form-group  w-50 ml-auto mr-auto mt-2">
				      <div class="col-sm-10">
				        Username:<input type="username" class="form-control mt-3" id="username" placeholder="Enter Username" name="username" style="margin-left:50px;">
				        
				      </div>
				    </div>
				    <div class="form-group w-50 ml-auto mr-auto">
				      <div class="col-sm-10 text-center">          
				       Password: <input type="password" class="form-control mt-3" id="pwd" placeholder="Enter password" name="password" style="margin-left:50px;">
				        
				      </div>
				    </div>
				    <div class="form-group ">        
				      <div class=" col-sm-10 ">
				        <button type="submit" class="btn btn-primary mt-3" style="margin-left:180px;">Submit</button>
				      </div>
				    </div>
 				 </form>


	<a href="register-form.php">New User?</a>
</div>


<?php
include 'components/footer.php';
?>