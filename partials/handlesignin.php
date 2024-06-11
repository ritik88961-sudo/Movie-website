<?php	  
	function isValidPhoneNumber($phone) {
		// Check if the phone number is exactly 10 digits and contains only numbers
		return preg_match('/^\d{10}$/', $phone);
	}
	$username = $name = $email = $phone = $password = "";
	include('../includes/db.php');
	if(isset($_POST['submit'])){
		if(!empty($_POST['username']) && !empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['email']) && !empty($_POST['password'])){
			$username = mysqli_real_escape_string($conn,$_POST['username']);
			$name = mysqli_real_escape_string($conn,$_POST['name']);
			$email = mysqli_real_escape_string($conn,$_POST['email']);
			$phone = mysqli_real_escape_string($conn,$_POST['phone']);
			$password = md5($_POST['password']);

			$selectQuery = "SELECT * FROM users WHERE username = '{$username}'";
			$selectResult = mysqli_query($conn,$selectQuery);
			if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
				header("Location: {$hostname}/index.php?error=invalidemailformat&formtype=signin");
			}
			if(!isValidPhoneNumber($phone)){
				header("Location: {$hostname}/index.php?error=invalidphone&formtype=signin");
			}
			if(mysqli_num_rows($selectResult)>0){
				header("Location: {$hostname}/index.php?error=useralreadyexist&formtype=signin");
			}
			else{
				$insertQuery = "INSERT INTO users(username,name,email,phone,password) VALUES('{$username}','{$name}','{$email}','{$phone}','{$password}')";
				$runInsert = mysqli_query($conn,$insertQuery);
				session_start();
				$_SESSION['username'] = $username;
				header("Location: {$hostname}/index.php?signupsuccess=true");
				exit();
			}
		}
		else{
			header("Location: {$hostname}/index.php?error=fillmandatoryfield&formtype=signin");
		}
			
	}
?>