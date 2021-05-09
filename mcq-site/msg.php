<?php
session_start();
include 'classes/dbconnect.php';


$db = DB::getInstance();
 ?>

<?php

	/* CHECK if same user or email exists or not ? */
	$query="SELECT * FROM messages ORDER BY created_at DESC";
	$result=$db->query($query);

	if($db->numrows($result) > 0) {
		while($post=$db->assoc($result)) {
					$id=$post['id'];
					$email=$post['email'];
					$message=$post['message'];
					$time=$post['created_at'];
                    
                    if($_SESSION['role']=='admin'){
                    include "show-msgs.php";
                    }
                    if($_SESSION['role']=='user'){
                        include 'usermsg-show.php';
                    }
		}
	}

?>