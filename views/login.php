<div class="form-popup" id="loginpopup">
    <div class="form-header">
        <h1>Login Here</h1>
        <span id="logincloseBtn">&#10006;</span>
    </div>
    <div class="form">
        <form action="partials/handlelogin.php" method="post">
            <center>
                <div id="login-error-message" style="color: red; font-weight: bold; font-size:20px;"></div>
            </center>
            <label>Username<span class="mandatory"> *</span></label>
            <input type="text" name="username" placeholder="Choose a unique Username" required>
            <br>
            <label>Password<span class="mandatory"> *</span></label>
            <input type="password" name="password" placeholder="Password" required>
			<br/>
			<button name="submit" id="submit">Submit</button>
            <br/>
        </form>
        <span>Don't have an account? <a id="createAccount" href="#">Create account</a></span>
    </div>
</div>
