<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Jobportalclient.WebForm3" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        @import url(https://fonts.googleapis.com/css?family=Open+Sans);

html {
 
  /*background-image: linear-gradient(to right top, #8e44ad 0%, #3498db 100%);*/
}

nav {
  
}

nav ul {
  text-align: center;
  background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0.2) 25%, rgba(255, 255, 255, 0.2) 75%, rgba(255, 255, 255, 0) 100%);
  box-shadow: 0 0 25px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
}

nav ul li {
  display: inline-block;
}

nav ul li a {
  padding: 18px;
  font-family: "Open Sans";
  text-transform:uppercase;
  color: rgba(0, 35, 122, 0.5);
  font-size: 18px;
  text-decoration: none;
  display: block;
}

nav ul li a:hover {
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
  background: rgba(200, 200, 200 , 0.1);
  color: rgba(0, 35, 122, 0.7);
}

body {
    background:url("Theme1/images/bg-01.jpg") no-repeat  center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
   }

    </style>
  <title>Login V5</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Theme1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme1/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Theme1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme1/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme1/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Theme1/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Theme1/css/util.css">
	<link rel="stylesheet" type="text/css" href="Theme1/css/main.css">
     <link rel="stylesheet" href= 
"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> 
<!--===============================================================================================-->
</head>
    <title></title>
</head>
<body >
    
  
    <nav class="bg-white">
  <ul>
    <li>
      <a href="#">Home</a>
    </li>
    <li>
      <a href="#">About</a>
    </li>
    <li>
      <a href="#">Services</a>
    </li>
    <li>
      <a href="#">Contact</a>
    </li>
  </ul>
</nav>

     <div class="limiter"  style="max-width:700px;max-height:initial">
		<div class="container-login100" >
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
              
				<form id="form1" runat="server" class="login100-form validate-form flex-sb flex-w">

                    <span class="login100-form-title p-b-53">
					Sign Up
					</span>
                    
                    <div class="p-t-31 p-b-9">
						<span class="txt1">
							Username
					    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label>

                            </span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Username is required">
						
                         <asp:TextBox CssClass="input100" ID="TextBox1" runat="server" placeholder="username"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                   <div class="p-t-31 p-b-9">
						<span class="txt1">
							Email
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Email is required">
						
                         <asp:TextBox CssClass="input100" ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>



                       <div class="p-t-31 p-b-9">
						<span class="txt1">
							Password
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						
                         <asp:TextBox CssClass="input100" ID="TextBox3" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                      <div class="p-t-31 p-b-9">
						<span class="txt1">
							Confirm Password
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						
                         <asp:TextBox CssClass="input100" ID="TextBox4" runat="server" placeholder="Reenter password" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
                            
                     <div class="p-t-31 p-b-9">
						<span class="txt1">
							Contact
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Contact is required">
						
                         <asp:TextBox CssClass="input100" ID="TextBox5" runat="server" placeholder="Contact No"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
                            
                         
                         <div class="p-t-31 p-b-9">
						<span class="txt1">
							Role
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Role is required">
                        <asp:DropDownList CssClass="input100" ID="DropDownList1" runat="server">
                            <asp:ListItem>user</asp:ListItem>
                            <asp:ListItem>company</asp:ListItem>
                        
                        </asp:DropDownList>
						<span class="focus-input100"></span>
					</div>
                            





                       


                    <div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							 <asp:Button CssClass="login100-form-btn" ID="Button1" runat="server" Text="Sign Up" class="form-submit" OnClick="Button1_Click"/>
                    
						</button>
					</div>

                           <div class="w-full text-center p-t-55">
						<span class="txt2">
							Already a member?
						</span>

						
						
                               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Sign In</asp:HyperLink>

					</div> 
                        </form>
                    </div>
                   
                </div>
            </div>
      
</body>
</html>
