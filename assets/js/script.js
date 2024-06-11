// Ensure the DOM is fully loaded before attaching event listeners
document.addEventListener("DOMContentLoaded", function() {
    // ****************************************************************************//
    
    // SignIn and Login Form PopUp Script

    // Get the elements
    const signInBtn = document.getElementById("signInBtn");
    const loginBtn = document.getElementById("loginBtn");
    const createAccountBtn = document.getElementById("createAccount");
    const loginHereBtn = document.getElementById("loginHere");

    const loginPopup = document.getElementById("loginpopup");
    const registerPopup = document.getElementById("registerpopup");
    const loginCloseBtn = document.getElementById("logincloseBtn");
    const signCloseBtn = document.getElementById("signcloseBtn");

    // Function to open a popup
    function openPopup(popup) {
        // Close any open popups
        document.querySelectorAll('.form-popup').forEach(p => p.style.display = 'none');
        // Open the desired popup
        popup.style.display = 'block';
    }

    // Function to close a popup
    function closePopup(popup) {
        popup.style.display = 'none';
    }

    // Event listeners for SignIn and Login buttons
    if (signInBtn) {
        signInBtn.addEventListener("click", function() {
            openPopup(registerPopup);
        });
    }

    if (loginBtn) {
        loginBtn.addEventListener("click", function() {
            openPopup(loginPopup);
        });
    }

    // Event listener for create account button inside login popup
    if (createAccountBtn) {
        createAccountBtn.addEventListener("click", function() {
            openPopup(registerPopup);
        });
    }
    // if(loginhereBtn){
    //     loginhereBtn.addEventListener('click',function(){
    //         openPopup(loginPopup);
    //     })
    // }

    // Event listener for login here button inside register popup
    if (loginHereBtn) {
        loginHereBtn.addEventListener("click", function() {
            openPopup(loginPopup);
        });
    }

    // Event listeners for close buttons
    if (loginCloseBtn) {
        loginCloseBtn.addEventListener("click", function() {
            closePopup(loginPopup);
        });
    }

    if (signCloseBtn) {
        signCloseBtn.addEventListener("click", function() {
            closePopup(registerPopup);
        });
    }

    // Close popups when clicking outside of them
    document.body.addEventListener("mousedown", function(event) {
        if (!event.target.closest('.form-popup')) {
            document.querySelectorAll('.form-popup').forEach(popup => {
                popup.style.display = 'none';
            });
        }
    });
    // if(document.getElementById('submit').addEventListener('click')){
        
    // }
    const params = new URLSearchParams(window.location.search);
    const loginerrorMessage = document.getElementById('login-error-message');
    const signinerrorMessage = document.getElementById('signin-error-message');
    const updateerrormessage = document.getElementById('update-error-message');
    if(params.has('error')){
        let message = '';
        const error = params.get('error')
        const formtype = params.get('formtype');
        const update = params.get('update');
        if(formtype === 'login'){
            if(error==='invalidusername'){
                message = 'Username does not exist';
            }
            else if(error==='invalidpassword'){
                message = 'Password is incorrect';
            }
            openPopup(loginPopup);
            loginerrorMessage.textContent = message;
        }
        else if(formtype === 'signin'){
            if(error === 'invalidemailformat'){
                message = 'Enter valid Email';
            }
            else if(error==='invalidphone'){
                message = 'Enter Valid Phone Number';
            }
            else if(error==='useralreadyexist'){
                message = 'Username already Exist';
            }
            else if(error==='fillmandatoryfield'){
                message = 'Please fill mandatory fields';
            }
            openPopup(registerPopup);
            signinerrorMessage.textContent = message;
        }
        else if(formtype==='update'){
            if(error === 'namefield'){
                message = 'Name field is Required';
            }
            else if(error === 'emailfield'){
                message = 'Email field si Required';
            }
            else if(error === 'phonefield'){
                message = "Invalid Phone";
            }
            else if(error === 'passwordfield'){
                message = "Enter Password";
            }
            else if(error === 'false'){
                message = 'Something Went Wrong';
            }
            else if(error === 'invalidpassword'){
                message = 'Password is Incorrect';
            }
            updateerrormessage.textContent = message;
            // updateerrormessage.style.display = 'block';
            
        }
    }
    // SignIn and login Form PopUp script end
    // ****************************************************************************//
    
    // Search Movies Script Start Here
    document.getElementById('search').addEventListener('keyup',(event)=>{
        const data = event.target.value;
        let bodyContent = `data=${data}`;
        if(bodyContent != ''){
            fetch('views/search.php',{
                method:"POST",
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: bodyContent
            })
            .then(response=>response.text())
            .then(data=>{
                document.getElementById('movie-list').innerHTML = data;
            })
            .catch(error=>concole.log("Error"))
        }
        else{
            bodyContent = '';
        }
    });
    // Search Movies Script End
    // ****************************************************************************//
});


