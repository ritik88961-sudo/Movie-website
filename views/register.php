
<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
<div class="form-popup" id="registerpopup">
	<div class="form-header">
		<h1>SignUp Here</h1>
		<span id="signcloseBtn">&#10006;</span>
	</div>
	<div class="form">
		<form action="partials/handlesignin.php" method="post">
			<center>
                <div id="signin-error-message" style="color: red; font-weight: bold; font-size:20px;"></div>
            </center>
			<label>Username<span class="mandatory"> *</span></label>
			<input type="text" name="username" placeholder="Choose a unique Username" required>
			<br>
			<label>Name<span class="mandatory"> *</span></label>
			<input type="text" name="name" placeholder="Name" required>
			<br>
			<label>Email<span class="mandatory"> *</span></label>
			<input type="email" name="email" placeholder="Email" required>
			<br>
			<label>Phone<span class="mandatory"> *</span></label>
			<input type="text" name="phone" placeholder="Enter your Phone Number" required />
			<br/>
			<label>Password<span class="mandatory"> *</span></label>
			<input type="password" name="password" placeholder="Password" required min="10"/>
			<br/>
			<button name="submit">Submit</button>
			<br/>
		</form>
		<span>Already have an account? <a id="loginhereBtn" href="#">Login here</a></span>
	</div>
</div>