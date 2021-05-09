<?php
include 'components/admin-navbar.php';
include 'classes/dbconnect.php';


$db = DB::getInstance();

/* fetch user detail */
$sql="SELECT * FROM users ";

$ret=$db->query($sql);

echo "
<table class='table'>
    <tr>
      <th>ID</th>
      <th>Username</th>
      <th>Email</th>
      <th>Status</th>
      <th>Role</th>
      <th>Password</th>
      <th>Delete</th>
      <th>Edit</th>
    </tr>

<tbody>
";

if($ret) {

	if($db->numrows($ret)>0) {
		while($row=$db->assoc($ret)) {
			//include("../include/frame_profile_detail.php");
      echo "<tr>";
        echo "<td>".$row['id']."</td>";
        echo "<td>".$row['username']."</td>";
        echo "<td>".$row['email']."</td>";
        echo "<td>".$row['status']."</td>";
        echo "<td>".$row['role']."</td>";
        echo "<td>".$row['password']."</td>";
        

       $delete_user_link='delete-user.php?username='.$row['username'];
        echo "<td><a href=$delete_user_link ><button type=\"button\" class=\"btn btn-danger\">Delete</button></a></td>";
      $edit_user_link='edit-profile.php?q=edit&username='.$row['username'].'&userid='.$row['id'];
        echo "<td><a href=$edit_user_link ><button type=\"button\" class=\"btn btn-primary\">Edit</button></a></td>";
        
      echo "</tr>";

    }
    echo "
    </tbody>
  </table>
   ";

  }
} else {
	echo "failed";
}

?>