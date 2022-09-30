<?php session_start(); ?>
<?php include('dbcon.php'); ?>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="userlog/userstyles.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.css" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

</head>
<body>

<body>
<nav style="background: linear-gradient(90deg,#f60000,#4f414d); color:white !important;" class="navbar navbar-inverse">
			  <div class="container-fluid">
				<div class="navbar-header">
                <a class="navbar-brand" style="color:white !important" href="index.php"><i class="icofont-blood-drop"></i>Blood Donation Management System </a>
				</div>

				<ul class="nav navbar-nav navbar-right">
				  <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
				</ul>
			  </div>
		</nav>

	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card" style="background: linear-gradient(90deg,#f60000,#4f414d);">
				<div class="d-flex justify-content-center">
				<div class="panel-heading">
                            <h3 class="panel-title"><center>Admin Login</center></h3>
                        </div>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form action="#" method="post">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="username" class="form-control input_user" value="" placeholder="Username" required>
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="password" class="form-control input_pass" value="" placeholder="Password" required>
						</div>
						
							<div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="submit" name="userlogin" style="border-radius: 0%" class="btn login_btn">Admin Login</button>
				   </div>
					</form>
				</div>
				
				<?php
	if (isset($_POST['userlogin']))
		{
			$username = mysqli_real_escape_string($con, $_POST['username']);
			$password = mysqli_real_escape_string($con, $_POST['password']);
			
			$query 		= mysqli_query($con, "SELECT * FROM admin WHERE  password='$password' and username='$username'");
			$row		= mysqli_fetch_array($query);
			$num_row 	= mysqli_num_rows($query);
			
			if ($num_row > 0) 
				{			
					$_SESSION['user_id']=$row['user_id'];
					header('location:admin/index.php');
					
				}
			else
				{
					echo '
								<div class="alert alert-danger alert-dismissible">
                                        Invalid Username & Password.
                                    </div> ';
				}
		}
  ?>
				
				
		
				<div class="mt-4">
					<!-- <div class="d-flex justify-content-center links">
						Don't have an account? <a href="#"  class="ml-2" style="text-decoration:none">Sign Up</a>
					</div> -->
					<div class="d-flex justify-content-center links">
						<a href="userlog/userlogin.php" style="text-decoration:none; color: white">Back to User Panel</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>



</html>

