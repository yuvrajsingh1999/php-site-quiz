<?php
session_start();
if($_SESSION['role']=='admin'){
include 'components/admin-navbar.php';
}
if($_SESSION['role']=='user'){
    include 'components/user-navbar.php';
}
?>
<div class="container-fluid bg-light">
<?php
if(isset($_SESSION['msg-success']))
{
?>
<div class="alert alert-success fas fa-check fade-in" style="">
<stong>Success!</strong><?php echo $_SESSION['msg-success'];?>
</div>
	<?php
	}
	unset($_SESSION['msg-success']);
	?>
<div class="container  ">
<h1 class="float-left w-100"><strong>New Message</strong></h1>
</div>
<br>
<div class="container">
<form method="post" action="message.php" enctype="multipart/form-data">
                                <?php
                                if($_SESSION['role']=='admin'){
                                ?>
								<div class="form-group">
									<label>Recipients Email:</label>
									<input type="email" name="email" class="form-control" required />
								</div>
                                <?php
                                }

                                if($_SESSION['role']=='user'){
                                ?>
                                <div class="form-group">
                                    <label>Email:</label>
                                    <select class="form-control" name="email" required>
                                    <option>yuvisingh11999@gmail.com</option>
                                    </select>
                                
                                <?php
                                }
                                ?>
                                <div class="form-group">
									<label>Message:</label>
									<textarea type="text" name="message" class="form-control" required >
                                    </textarea>
								</div>
                                
								<div class="form-group text-right">
									<button class="btn btn-primary btn-block" name="submit">Send</button>
								</div>
</div>
</div>