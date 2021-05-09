<?php
session_start();
include "classes/dbconnect.php";


/* If already logged in then redirect to previous page */
if(isset($_SESSION['username'])) {
		header('Location:home.php');
}

if(isset($_POST['submit'])) {

	$username=$_POST['username'];
	$email=$_POST['email'];
    $password=$_POST['password'];
    $college=$_POST['college'];
	$timestamp=date('Y-m-d H:i:s');
	
$db = DB::getInstance();
	/* CHECK if same user or email exists or not ? */
	$sql="SELECT * FROM users WHERE username='$username' OR email='$email' ";
	$ret=$db->query($sql);
	$rows=$db->numrows($ret);

	if($rows > 0) {
        echo 'error';
		header("location:register-form.php");
	}
	else {
        
		$sql="INSERT INTO users (username, email,role, password,status, created_at, updated_at, college)
				VALUES ('$username','$email','user','$password', 1,'$timestamp','$timestamp', '$college')";
        
        $ret=$db->query($sql);
            
            $_SESSION['record']="New Record added successfully!";
        
		header("location:login-form.php");
	}


}


/* * * * * Registeration Form * * * * */
else {
	include "register-form.php";

}


?>