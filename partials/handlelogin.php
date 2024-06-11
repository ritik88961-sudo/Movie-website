<?php
    include_once('../includes/db.php');
    if(isset($_POST['submit'])){
        $username = mysqli_real_escape_string($conn,$_POST['username']);
        $password = md5($_POST['password']);
        $selectQuery = "SELECT * FROM users WHERE username = '{$username}'";
        $result = mysqli_query($conn,$selectQuery) or die("Something went wrong");
        if(mysqli_num_rows($result)>0){
            
            while($row = mysqli_fetch_assoc($result)){
                if($password == $row['password']){
                    session_start();
                    $_SESSION["username"] = $row['username'];
                    header("Location: {$hostname}/index.php?signupsuccess=true");
                }
                else{
                    header("Location: {$hostname}/index.php?error=invalidpassword&formtype=login");
                    exit();
                }
            }
        }
        else{
            header("Location: {$hostname}/index.php?error=invalidusername&formtype=login");
            exit();
        }
    }
?>