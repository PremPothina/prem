
 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN_PAGE.aspx.cs" Inherits="LOGIN_PAGE" EnableEventValidation="false" %>

<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
<head runat="server">
    <meta charset="utf-8">
    <title>Login and Registration Form </title>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Your CSS styles here */
    
       * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  /*  font-family: Arial, sans-serif;*/
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
 /*   background-color: #f8f8f8;*/
  background-image:url(https://media.istockphoto.com/id/1445474627/photo/stained-white-paper-background-texture.webp?b=1&s=170667a&w=0&k=20&c=JZY9vEUIpiDJcA59XVhbvU3obaUkxff2ZwSf69RPrXI=);
  background-size:cover;
}


.video-container {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        overflow: hidden;
        z-index: -1;
    }

    video {
        position: absolute;
        top: 50%;
        left: 50%;
        min-width: 100%;
        min-height: 100%;
        width: auto;
        height: auto;
        transform: translate(-50%, -50%);
    }

.wrapper {
    width: 400px;
    padding: 30px;
  /*  background-color: #fff;*/
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.title-text {
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    margin-bottom: 20px;
}

.title {
    font-size: 35px;
    font-weight: 600;
    cursor: pointer;
    color:black;
}

.form-container {
    width: 100%;
}

.form-inner {
    display: flex;
    flex-direction: column;
}

.field {
    margin-bottom: 20px;
}

.field input {
    height: 40px;
    width: 100%;
    padding: 8px;
    border: none;
    background-color: rgba(255, 255, 255, 0.8); /* Use rgba to set the background color with transparency */
    border-radius: 5px;
    font-size: 16px;
    transition: background-color 0.3s, border-color 0.3s;
}

.field input:focus {
    outline: none;
    background-color: rgba(255, 255, 255, 0.5); /* Lighter background color on focus */
    border-color: #fa8072; /* light coral */
}


.btn {
    height: 40px;
    width: 100%;
    border: none;
    background-color: #fa8072; /* light coral */
    color: lightgreen;
    font-size: 16px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    
}

.btn:hover {
    background-color: lightgreen; /* coral */

}

.pass-link {
    text-align: center;
    margin-top: 10px;
    font-size: 18px;
    color: red;
}

.pass-link a {
    color: #fa8072; /* light coral */
    text-decoration: none;
    transition: color 0.3s;
}

.pass-link a:hover {
    color: #ff0000; 
}

.signup {
    text-align: center;
    margin-top: 20px;
    font-size: 18px;
    color: red;
}

.signup a {
    color: blue; /* light coral */
    text-decoration: none;
    transition: color 0.6s;
}

.signup a:hover {
    color:red; 
}

.error-message {
    color:red; /* red */
    font-size: 14px;
    margin-top: 5px;
}

    </style>
</head>
<body  >

    <div class="video-container">
    <video autoplay muted loop>
        <source src="https://v.ftcdn.net/02/86/05/08/700_F_286050861_T9BAzbJlkPaLmbzEfgUXXrYTFGsjPqNj_ST.mp4" type="video/mp4">
    </video>
</div>
    <form id="form1" runat="server">
        <div class="wrapper">
            <asp:Panel ID="Panel1" runat="server">
            <div class="title-text">
                <div class="title" id="leftdiv" onclick="showPanel('login')"> Login </div>  
             <div class="title" id="rightdiv" onclick="showPanel('signup')"> Signup </div>
            </div>
             </asp:Panel> 
              <center> 
            <div class="form-container">
                <div class="form-inner">
                    <div id="pnlLogin" runat="server" class="sliding-panel"><br />
                        <div class="field">

                      <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="loginValidation" Display="Dynamic" ControlToValidate="txtEmail" ForeColor="Red" Font-Size="Medium"  ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                          
                            <asp:RegularExpressionValidator ID="rgev" runat="server" ControlToValidate="txtEmail" ValidationGroup="loginValidation" Display="Dynamic" ErrorMessage="invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Font-Size="medium"></asp:RegularExpressionValidator>
                        </div>
                        <div class="field">
                          <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="loginValidation" Display="Dynamic" ErrorMessage="Password is required" ControlToValidate="txtPassword" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
                        </div>
                       <div class="pass-link">
                            <a href="#">Forgot password?</a>
                        </div>
                          <div class="field">
                      <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click"  ValidationGroup="loginValidation"   CausesValidation="true"  BackColor="LightGreen"  />

                        </div>
                       <div class="signup">
                           Not a member?  <a href="#" class="signup-link" onclick="showSignupPanel()">Signup</a>
                          </div>

                    
                    </div>
                    <div id="pnlSignup" runat="server" class="sliding-panel" style="display:none;" ><br />
                        <div class="field">
                            <asp:TextBox ID="txtName" runat="server" placeholder="Name"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ValidationGroup="signupValidation" Display="Dynamic" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>  
                            <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtName"
                                ValidationGroup="signupValidation" Display="Dynamic" ErrorMessage="Name must contain only letters and spaces"
                                 ValidationExpression="^[a-zA-Z ]+$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
                                    </div>
                        <div class="field">
                            <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Phone Number"></asp:TextBox><br />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Number is required" ValidationGroup="signupValidation" Display="Dynamic" ControlToValidate="txtPhoneNumber" ForeColor="Red" Font-Size="Medium"> </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev" runat="server" ControlToValidate="txtPhoneNumber"
                                   ValidationGroup="signupValidation" Display="Dynamic" ErrorMessage="Invalid phone number "
                                       ValidationExpression="^\+?(\d[\d-. ]+)?(\([\d-. ]+\))?[\d-. ]+\d$"
                                        ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
                        </div>
                        <div class="field">
                            <asp:TextBox ID="txtAddress" runat="server" placeholder="Address"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Address is required" ValidationGroup="signupValidation" Display="Dynamic" ControlToValidate="txtAddress" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
                        </div>
                        <div class="field">
                            <asp:TextBox ID="txtSignupEmail" runat="server" placeholder="Email Address"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Email is required" ValidationGroup="signupValidation" Display="Dynamic" ControlToValidate="txtSignupEmail" ForeColor="Red" Font-Size="small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revSignupEmail" runat="server" ControlToValidate="txtSignupEmail" ValidationGroup="signupValidation" Display="Dynamic" ErrorMessage="Invalid email address" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator> 
                        </div>
                        <div class="field">
                            <asp:TextBox ID="txtSignupPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password is required" ValidationGroup="signupValidation" Display="Dynamic" ControlToValidate="txtSignupPassword" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
                        </div>
                        <div class="field">
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm password"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm is required" ValidationGroup="signupValidation" Display="Dynamic" ControlToValidate="txtConfirmPassword" ForeColor="Red" Font-Size="Medium" ></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ValidationGroup="signupValidation" Display="Dynamic" ControlToCompare="txtSignupPassword" ErrorMessage="Passwords do not match" ForeColor="Red" Font-Size="Medium"></asp:CompareValidator>
                          </div>
                           <div class="field">
                               <asp:Button ID="btn_signup" runat="server" Text="Signup" OnClick="btn_signup_Click"  ValidationGroup="signupValidation" CausesValidation="true" BackColor="LightGreen" />
                           </div>
                        <div class="signup-link">
                            Already have an account? <a href="LOGIN_PAGE.aspx">Login</a>
                        </div>
                    </div>
                </div>
            </div>
</center>
        </di>
    </form>
    <script>
        function showPanel(panelId) {
            var loginPanel = document.getElementById('pnlLogin');
            var signupPanel = document.getElementById('pnlSignup');

            if (panelId === 'login') {
                loginPanel.style.display = 'block';
                signupPanel.style.display = 'none';
            } else if (panelId === 'signup') {
                loginPanel.style.display = 'none';
                signupPanel.style.display = 'block';
            }
        }
        function toggleSlide() {
            var panel = document.getElementById('ctl00_slidingPanel');
            if (panel.style.height === '0px' || panel.style.height === '') {
                panel.style.height = panel.scrollHeight + 'px';
            } else {
                panel.style.height = '0px';
            }
        }
        function showSignupPanel() {
            var loginPanel = document.getElementById('pnlLogin');
            var signupPanel = document.getElementById('pnlSignup');

            loginPanel.style.display = 'none';
            signupPanel.style.display = 'block';
        }

    </script>
</body>
</html>
