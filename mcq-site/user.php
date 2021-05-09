<?php
session_start();
include 'components/user-navbar.php';

include "classes/dbconnect.php";




?>
<div class="container-fluid" style="height:580px;">
<?php
if(isset($_SESSION['user-success']))
{
?>
<div class="alert alert-success fade-in">
<stong>Success!</strong><?php echo $_SESSION['user-success'];?>
</div>
	<?php
	}
	unset($_SESSION['user-success']);
	
	?>
	
</div>


<?php
include 'components/footer.php';
?>
