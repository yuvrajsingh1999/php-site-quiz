<?php
session_start();
//include 'classes/dbconnect.php';

include 'components/admin-navbar.php';
?>
<div style=" height:600px;">
<?php
if(isset($_SESSION['success']))
{
?>
<div class="alert alert-success fas fa-check fade-in" style="">
<stong>Success!</strong><?php echo $_SESSION['success'];?>
</div>
	<?php
	}
	unset($_SESSION['success']);
	?>

</div>
<?php
include 'components/footer.php';
?>