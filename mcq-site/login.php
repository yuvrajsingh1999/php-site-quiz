<?php
session_start();
include 'classes/dbconnect.php';
/* If form is submitted then authenticate it*/

if(isset($_POST['username'])) {
    
	$username=$_POST['username'];
	$password=$_POST['password'];
	$_SESSION['username']=$username;
	
$db = DB::getInstance();
	

	/* Check login  correctness*/
	$sql="SELECT * FROM users WHERE username='$username' AND password='$password' ";
	//$ret =0;
	$ret=$db->query($sql);
	//$ret = pg_fetch_row($result);
	
	$rows = $db->numrows($ret);
	//die("here");
	
	//$rows=1;

	/* query failed */
	if($ret==FALSE) {
        //die('failed');
		$_SESSION['error']="Query failed";
		header("location:login-form.php");
	}

	if($rows == 1) {
		$_SESSION['username']=$username;
		$_SESSION['password']=$password;
		/* user type */
		$detail=$db->assoc($ret);
		$_SESSION['role']=$detail['role'];
		$_SESSION['userid']=$detail['id'];
		
		//echo "Hello ".$_SESSION['username']." you are logged in successfully";
		if($_SESSION['role']=='admin') {

			$_SESSION['success']="Hello ".$_SESSION['username']." you are logged in successfully";
		header("location:admin.php");
		}	
		else {

			$_SESSION['user-success']="Hello ".$_SESSION['username']." you are logged in successfully";

		header("location:user.php");
		}	
		
	} else {
		echo "
		<div class=\"alert alert-danger container\" role=\"alert\">
	  <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
	  <span class=\"sr-only\">Error:</span>
	   Invalid Username or Password
		</div>
		";
	}
} else {
			if(!isset($_SESSION['username'])) {
			echo "
			<div class=\"alert alert-danger\" role=\"alert\">
		  <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>   
		  <span class=\"sr-only\">Error:</span>
		   Login Again
			</div>
			";
			} else {
                //echo "Hello ".$_SESSION['username']." you are logged in successfully";
				//header("location:home.php");
			}
}


?>