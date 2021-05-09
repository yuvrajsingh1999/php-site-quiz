<?php
session_start();
if($_SESSION['role']=='admin'){
include 'components/admin-navbar.php';
}
if($_SESSION['role']=='user'){
    include 'components/user-navbar.php';
}

if(isset($_REQUEST['id'])) {
    $id=$_REQUEST['id'];
    
    $db = DB::getInstance();

    $query="SELECT * FROM messages WHERE id='$id'";
    $result=$db->query($query);

    if($post=$db->assoc($result)) {
            $id=$post['id'];
            $title=$post['email'];
            $message=$post['message'];
            $time=$post['created_at'];
            
            include "single-view.php";
    }
}


?>