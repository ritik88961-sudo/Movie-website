<?php
    session_start();
    if(isset($_SESSION['username'])){
            include_once('../includes/db.php');
        $selectuser = "SELECT * FROM users WHERE username = '{$_SESSION['username']}'";
        $result = mysqli_query($conn,$selectuser);
        $values = mysqli_fetch_assoc($result);
?>

        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>User Profile</title>
            <link rel="stylesheet" href="../assets/css/style.css">
            
        </head>
        <body>
        <div class="manage-profile">
            <h1>Profile (User)</h1>
            <form action="../partials/handleUserManage.php" method="post" class="manage-profile-form">
                    <center>
                        <div id="update-error-message" style="color: red; font-weight: bold; font-size:20px;"></div>
                    </center>
                <label>Username: (Can't be editted)</label>
                <input readonly value="<?php echo $values['username'] ?>" name="username"/>
                <br/>
                <label>Name:</label>
                <input value="<?php echo $values['name'] ?>" name="name"/>
                <br/>
                <label>Email:</label>
                <input value="<?php echo $values['email'] ?>" name="email"/>
                <br/>
                <label>Phone:</label>
                <input value="<?php echo $values['phone'] ?>" name="phone"/>
                <br/>
                <label>Password:</label>
                <input type="password" name="password" required placeholder="Password"/>
                <br/>
                <button name="update" id="update-btn">Update</button>
            </form>
        </div>
        <script type="text/javascript" src='../assets/js/script.js'></script>
        </body>
        </html>

<?php } else{
    header("Location: {$hostname}/Movie");
}?>
