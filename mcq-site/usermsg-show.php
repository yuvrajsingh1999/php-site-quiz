<?php
session_start();
include_once 'components/user-navbar.php';
include_once 'msg-header.php';
?>

<section class="container-fluid bg-dark" >

<?php
if($_SESSION['userid']==$post['user_id'])
{
?>
<div class="container-fluid">

<div class="row pt-2">
			<div class="col-md-11 ">

			<div class="card well mb-1 p-2 bg-light">
				<!-- TITLE -->
		  		<div class="panel-heading">
		    		<h3 class="panel-title">
		    			<a href=<?php echo ""; ?> ><?php echo $email; ?></a>
		    		</h3>
		  		</div>

		  		<!-- 	CONTENT -->
		  		<div class="panel-body">
						<?php
							echo $body;
		    		?>
		  		</div>

		  		<!-- FOOTER-->
		  		<div class="panel-footer">
						
						<!-- time -->
		  			<span class="label label-default float-right">
							<i class="far fa-clock" aria-hidden="true"> Sent at:</i> <?php echo $time ?>
						</span>

</div>
<?php
}
?>

</section>