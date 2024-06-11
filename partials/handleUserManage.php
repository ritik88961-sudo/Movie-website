<?php
    include_once('../includes/db.php');
    $name = $email = $phone = $password = '';
    if(isset($_POST['update'])){
        $username = $_POST['username'];
        if(!empty($_POST['name'])){
            $name = $_POST['name'];
        }
        else{
            header("Location: {$hostname}/views/userProfile.php?error=namefield&formtype=update");
            exit();
        }
        if(!empty($_POST['email'])){
            $email = $_POST['email'];
        }
        else{
            header("Location: {$hostname}/views/userProfile.php?error=emailfield&formtype=update");
            exit();
        }
        if(!empty($_POST['phone']) && preg_match("/^[0-9]{10}$/", $_POST['phone'])){
            $phone = $_POST['phone'];
        }
        else{
            header("Location: {$hostname}/views/userProfile.php?error=phonefield&formtype=update");
            exit();
        }
        if(!empty($_POST['password'])){
            $password = $_POST['password'];
        }
        else{
            header("Location: {$hostname}/views/userProfile.php?error=passwordfield&formtype=update");
            exit();
        }
        $selectQuery = "SELECT * FROM users WHERE username='{$username}'";
        $result = mysqli_query($conn,$selectQuery);
        $values = mysqli_fetch_assoc($result);
        // echo "<script>alert('{$values['password']}')</script>";
        if(md5($password) == $values['password']){
            $updateQuery = "UPDATE users SET name = '{$name}', email ='{$email}', phone='{$phone}' WHERE username = '{$username}'";
            $result = mysqli_query($conn,$updateQuery);
            if($result){
                header("Location: {$hostname}/views/userProfile.php?update=success&formtype=update");
            }
            else{
                header("Location: {$hostname}/views/userProfile.php?error=false&formtype=update");
                exit();
            }
        }
        else{
            header("Location: {$hostname}/views/userProfile.php?error=invalidpassword&formtype=update");
            exit();
        }
    }
?>