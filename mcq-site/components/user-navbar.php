

<html>
<head>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title></title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>

</head>
<body>
<div class="container-fluid bg-primary pt-4 mb-2" style="height: 80px;">
<ul class="nav float-left text-white">
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle fas fa-bars text-dark" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> Menu</a>
    <div class="dropdown-menu">
      <a class="dropdown-item fas fa-home" href="user.php"> Home</a>
      <a class="dropdown-item fas fa-phone" href="#"> Contact</a>
      <a class="dropdown-item fas fa-info-circle" href="#"> About</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item fas fa-edit " href="edit-profile.php?q=user">Edit Profile</a>
    </div>
  </li>
  

  <li class="nav-item">
    <a class="nav-link active fas fa-envelope text-dark" href="msg.php"> Messages</a>
  </li>
  <li class="nav-item">
    <a class="nav-link fas fa-user-circle text-dark" href="profile.php"> Profile</a>
  </li>

  <li class="nav-item">
    <a class="nav-link fas fa-list-alt text-dark" href="show-quiz.php?q=show"> Quiz</a>
  </li>

  <li class="nav-item">
    <a class="nav-link fas fa-list-alt text-dark" href="show-quiz.php?q=result"> Result</a>
  </li>
</ul>


<ul class="nav float-right">
  <li class="nav-item">
        <a class="nav-link fas fa-sign-out-alt text-dark" href="logout.php" style="color: white;"> Log Out</a>
      </li>
     
</ul>
</div>