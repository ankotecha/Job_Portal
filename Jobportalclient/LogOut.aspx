<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="Jobportalclient.LogOut" %>
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
      
      <a href="">Home</a>
    </li>
    <li>
      <a href="#">Aboutus</a>
    </li>
  
  </ul>
</nav>
    <div class="limiter"  style="max-width:700px;max-height:initial">
		<div class="container-login100" >
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
              
				<form id="form2" runat="server" class="login100-form validate-form flex-sb flex-w">
					
                    

        
      
             
                    	<div class="container-login100-form-btn m-t-17">
					
							<img src="images/logout.jpg" style="padding-left:100px" alt="photo"/>
					</div>

                          <div class="p-t-13 p-b-9">
						<span class="txt1">
						<h1>	Are you sure?
						</h1>
                            <h3>
                                    Thank you for being with us
                            </h3>
						</span>

					</div>


              <h4 class="card-title"></h4>
        <div class="container-login100-form-btn m-t-17">
					<button class="login100-form-btn" ID="Button2" runat="server" Text="Yes">
                        Yes
					</button>
					</div>
                 
            <div class="container-login100-form-btn m-t-17">
						 <%--<asp:Button  CssClass="login100-form-btn" ID="Button2" runat="server" Text="NO" class="form-submit" OnClick="Button2_Click"/>--%>
                   	<button class="login100-form-btn" ID="Button1" runat="server" Text="Yes">
                        No
					</button>    
					</div>
              <br>
          
              
              
         

        
					


					
				</form>
			</div>
		</div>
	</div>
	

	
<!--===============================================================================================-->
	<script src="Theme1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Theme1/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Theme1/vendor/bootstrap/js/popper.js"></script>
	<script src="Theme1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Theme1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Theme1/vendor/daterangepicker/moment.min.js"></script>
	<script src="Theme1/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Theme1/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Theme1/js/main.js"></script>
      
</body>
</html>

    