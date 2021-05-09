<?php
session_start();
include 'classes/dbconnect.php';

if(isset($_POST['submit'])){
    $email=$_POST['email'];
    $message=$_POST['message'];
    $timestamp = date('Y-m-d H:i:s');

    $db = DB::getInstance();
    $sql="SELECT * FROM users WHERE email='$email'";
    $result = $db->query($sql);
    $row= $db->assoc($result);
    $id=$row['id'];
    
    $ins="INSERT INTO messages (user_id, email, message, created_at) VALUES ('$id', '$email','$message','$timestamp') ";
    $ret=$db->query($ins);

    $_SESSION['msg-success']="Message sent successfully.";
    if($_SESSION['role']=='admin'){
        
		header("location:new-msg.php");
        }
        if($_SESSION['role']=='user'){
            
		header("location:new-msg.php");
        }

}

?>