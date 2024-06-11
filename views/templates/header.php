<?php 
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Clone Website</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="icon" type="image/png" href="assets/images/logo.png">
</head>
<body>
    <header>
        <div class="brand-img">
            <a href="/Movie"><img src="assets/images/desktoplogo.png" alt="Brand Image" class="logo desktoplogo"></a>
            <a href="/Movie"><img src="assets/images/logo.png" alt="Brand Image" class="logo mobilelogo"></a>
        </div>
        <div>
        <input type="text" id="search" placeholder="Search for movies...">
        </div>
        
        <div class="user">
            <?php if(!isset($_SESSION['username'])){?>
                <button class="join-now" id="signInBtn">Join Now</button>
                <button class="sign-in" id="loginBtn">Sign In</button>
            <?php } else{ ?>
                <div class="user-area">
                    <div class="user-profile">
                        <a href="views/userProfile.php"><h3>Welcome <?php echo $_SESSION['username']?></h3></a>
                    </div>
                    <div class="user-img">
                            <a href="views/userProfile.php"><img src="assets/images/user.png"/></a>
                    </div>
                    <div class="logout">
                        <span><a href="views/logout.php">Logout</a></span>
                    </div>
                </div>

            <?php } ?>

        </div>
        
        <center>
            <?php include_once('views/register.php') ?>
            <?php include_once('views/login.php') ?>
        </center>
    </header>
<script type="text/javascript" src="assets/js/script.js"></script>
